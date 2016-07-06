package com.yg.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.admin.entity.Account;
import com.yg.admin.entity.ProductType;
import com.yg.admin.entity.UserLogin;
import com.yg.admin.service.AccountService;
import com.yg.admin.service.ProductTypeService;
import com.yg.admin.service.UserLoginService;
import com.yg.admin.util.Common;
import com.yg.admin.util.Md5Tool;

@Controller
@RequestMapping ("/")
public class LoginController {
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private AuthenticationManager myAuthenticationManager;
	
	@Inject
	private UserLoginService userLoginService;
	
	@Inject
	private ProductTypeService ptService;

	
	@RequestMapping ("submitlogin")
	public String submitlogin(String username,String password,HttpServletRequest request) throws Exception{
		try {
			System.out.println("33333333333333333333333333333333333333333333333");
			if (!request.getMethod().equals("POST")) {
				request.setAttribute("error","支持POST方法提交！");
			}
			if (Common.isEmpty(username) || Common.isEmpty(password)) {
				request.setAttribute("error","用户名或密码不能为空！");
				return "/login";
			}
			// 验证用户账号与密码是否正确
			Account users = this.accountService.querySingleAccount(username);
			if (users == null) {
				request.setAttribute("error", "用户不正确！");
				return "/login";
			}
			else if (users != null && Common.isEmpty(users.getAccountName()) && !Md5Tool.getMd5(password).equals(users.getPassword())){
				request.setAttribute("error", "密码不正确！");
				return "/login";
			}
			Authentication authentication = myAuthenticationManager
					.authenticate(new UsernamePasswordAuthenticationToken(username,users.getPassword()));
			SecurityContext securityContext = SecurityContextHolder.getContext();
			securityContext.setAuthentication(authentication);
			HttpSession session = request.getSession(true);  
		    session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);  
		    // 当验证都通过后，把用户信息放在session里
			request.getSession().setAttribute("userSession", users);
			request.getSession().setAttribute("userSessionId", users.getId());
			System.out.println(authentication.getPrincipal().toString());
			String userId = request.getSession().getAttribute("userSessionId").toString();
			String userName = users.getAccountName();
			String ip = Common.toIpAddr(request);
			UserLogin userLogin = new UserLogin();
			userLogin.setUserId(Integer.parseInt(userId));
			userLogin.setUserName(userName);
			userLogin.setloginIP(ip);
			userLoginService.add(userLogin);
			//request.getSession().setAttribute("userRole",authentication.getPrincipal());
			request.removeAttribute("error");
		} catch (AuthenticationException ae) {  
			request.setAttribute("error", "登录异常，请联系管理员！");
			return "/login";
		}
		return "redirect:index.do";
	}
	
	/**
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping ("index")
	public String index(Model model){
		List<ProductType> productTypes=ptService.queryAll(null);
		model.addAttribute("productTypes", productTypes);
    	return Common.BACKGROUND_PATH+"/index";
	}
}

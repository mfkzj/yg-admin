package com.yg.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.yg.admin.entity.UserLogin;
import com.yg.admin.mapper.UserLoginMapper;
import com.yg.admin.pulgin.mybatis.plugin.PageView;
import com.yg.admin.service.UserLoginService;


@Transactional
@Service("userLoginService")
public class UserLoginServiceImpl implements UserLoginService {
	@Autowired
	private UserLoginMapper userLoginMap;

	public PageView query(PageView pageView, UserLogin userLogin) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paging", pageView);
		map.put("t", userLogin);
		List<UserLogin> list = userLoginMap.query(map);
		pageView.setRecords(list);
		return pageView;
	}

	public List<UserLogin> queryAll(UserLogin t) {
		return null;
	}

	public void delete(String id) throws Exception {
		
	}

	public void update(UserLogin t) throws Exception {
		
	}

	public UserLogin getById(String id) {
		return null;
	}

	public void add(UserLogin t) throws Exception {
		userLoginMap.add(t);
	}

}

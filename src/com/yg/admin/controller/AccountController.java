package com.yg.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.admin.util.Common;

@Controller
@RequestMapping ("/account/")
public class AccountController extends BaseController{

	@RequestMapping("list")
	public String list(){
		System.out.println("eeeeeeeeeeeeeee");
		return Common.BACKGROUND_PATH+"/account/list";
	}
}

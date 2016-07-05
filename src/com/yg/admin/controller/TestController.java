package com.yg.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.admin.util.Common;

@Controller
@RequestMapping("/test/")
public class TestController {

	@RequestMapping("test")
	public String test(){
		System.out.println("eeeeeeeeeeeeeee");
		return Common.BACKGROUND_PATH+"/user/list";
	}
}

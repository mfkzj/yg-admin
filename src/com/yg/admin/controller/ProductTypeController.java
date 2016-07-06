package com.yg.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yg.admin.entity.ProductType;
import com.yg.admin.service.ProductTypeService;
import com.yg.admin.util.Common;

@Controller
@RequestMapping ("/productType/")
public class ProductTypeController extends BaseController{
	
	@Inject
	private ProductTypeService ptService;
	
	@RequestMapping("list")
	public String list(Model model){
		List<ProductType> types=ptService.queryAll(null);
		model.addAttribute("types", types);
		return Common.BACKGROUND_PATH+"/productType/list"; 
	}
	
	@RequestMapping("saveOrUpdate")
	@ResponseBody
	public Map<String, Object> saveOrUpdate(ProductType t){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message","保存成功");
		try {
			if(null==t.getId()){
				ptService.add(t);
			}else{
				ptService.update(t);
			}
		} catch (Exception e) {
			map.put("message","保存失败");
			e.printStackTrace();
		}
		return map;
	}

}

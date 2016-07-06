package com.yg.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yg.admin.entity.ProductType;
import com.yg.admin.mapper.ProductTypeMapper;
import com.yg.admin.pulgin.mybatis.plugin.PageView;
import com.yg.admin.service.ProductTypeService;

/**
 * 商品分类服务类
 * @author wuyb
 *
 */
@Transactional
@Service("productTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {
	
	@Autowired
	private ProductTypeMapper mapper;

	@Override
	public PageView query(PageView pageView, ProductType t) {
		return null;
	}

	@Override
	public List<ProductType> queryAll(ProductType t) {
		return mapper.queryAll(null);
	}

	@Override
	public void delete(String id) throws Exception {

	}

	@Override
	public void update(ProductType t) throws Exception {
		mapper.update(t);
	}

	@Override
	public ProductType getById(String id) {
		return null;
	}

	@Override
	public void add(ProductType t) throws Exception {
		mapper.add(t);
	}
}

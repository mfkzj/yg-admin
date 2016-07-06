package com.yg.admin.entity;

/**
 * 商品分类
 * @author wuyb
 *
 */@SuppressWarnings("serial")

public class ProductType implements java.io.Serializable {

	 private Integer id;
	 
	 /**父类ID**/
	 private Integer pid;
	 
	 /**分类名称**/
	 private String name;
	 /**分类注释**/
	 private String remark;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	/**分类名称**/
	public String getName() {
		return name;
	}
	/**分类名称**/
	public void setName(String name) {
		this.name = name;
	}
	/**分类注释**/
	public String getRemark() {
		return remark;
	}
	/**分类注释**/
	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}
}

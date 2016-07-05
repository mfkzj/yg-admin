package com.yg.admin.mapper;

import com.yg.admin.base.BaseMapper;
import com.yg.admin.entity.RoleAccount;
import com.yg.admin.entity.Roles;


public interface RolesMapper extends BaseMapper<Roles>{
	public Roles isExist(String name);
	
	public Roles findbyAccountRole(String accountId);
	
	public void addAccRole(RoleAccount roleAccount);
	
	public void deleteAccountRole(String accountId);
}

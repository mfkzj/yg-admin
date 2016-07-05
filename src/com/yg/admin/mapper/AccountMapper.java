package com.yg.admin.mapper;

import java.util.List;
import java.util.Map;

import com.yg.admin.base.BaseMapper;
import com.yg.admin.entity.Account;


public interface AccountMapper extends BaseMapper<Account>{
	public Account querySingleAccount(String accountName);
	public Account isExist(String accountName);

	public Account countAccount(Account account);
	
	public List<Account> queryNoMatch(Map<String, Object> map);
	
	public Account queryByAccountName(String name);
	
}

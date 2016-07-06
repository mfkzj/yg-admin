package com.yg.admin.service;

import com.yg.admin.base.BaseService;
import com.yg.admin.entity.Account;
import com.yg.admin.pulgin.mybatis.plugin.PageView;

public interface AccountService extends BaseService<Account>{

	/**
	 * 查询单个管理员
	 * @param accountName
	 * @return
	 */
	public Account querySingleAccount(String accountName);
	
	public Account isExist(String accountName);

	public Account countAccount(Account account);
	
	/**
	 * @param account
	 * @param pageView
	 * @return
	 */
	public PageView queryNoMatch(Account account,PageView pageView);
	
	public Account queryByAccountName(String name);
}

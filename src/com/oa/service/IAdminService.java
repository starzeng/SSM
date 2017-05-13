package com.oa.service;

import com.oa.modle.Admin;

/**
 * 后台管理模块
 * 
 * @author Administrator
 *
 */
public interface IAdminService {

	/**
	 * 查找账号是否存在
	 * 
	 * @param account
	 *            账号
	 * @return Admin对象
	 */
	public Admin findToAccount(String account);

	/**
	 * 查找账号密码是否正确
	 * 
	 * @param account
	 *            账号
	 * @param pswd
	 *            密码
	 * @return Admin对象
	 */
	public Admin findToAccountAndPswd(String account, String pswd);

}

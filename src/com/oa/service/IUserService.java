package com.oa.service;

import java.util.List;

import com.oa.modle.User;

/**
 * 用户管理模块
 * 
 * @author Administrator
 *
 */
public interface IUserService {

	/**
	 * 查询说有的用户
	 * 
	 * @param <T>
	 * 
	 * @return List
	 */
	public <T> List<T> list();

	/**
	 * 添加数据
	 * 
	 * @param user
	 * @return
	 */
	public boolean add(User user);

	/**
	 * 删除数据
	 * 
	 * @param id
	 */
	public void delete(User user);

}

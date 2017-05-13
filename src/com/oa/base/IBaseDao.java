package com.oa.base;

import java.util.List;

import org.apache.poi.ss.formula.functions.T;

/**
 * 基础DAO
 * 
 * @author Administrator
 *
 */
public interface IBaseDao {

	/**
	 * 增
	 * 
	 * @param object
	 *            传入对象
	 * @return
	 */
	public int add(Object object);

	/**
	 * 删
	 * 
	 * @param object
	 *            传入对象
	 * @return
	 */
	public boolean delete(Object object);

	/**
	 * 改
	 * 
	 * @param object
	 *            传入对象
	 * @return
	 */
	public boolean update(Object object);

	/**
	 * 查询一个对象
	 * 
	 * @param object
	 *            传入对象
	 * @return
	 */
	public Object findOne(Object object);

	/**
	 * 查询一个list集合
	 * 
	 * @param object
	 *            传入对象
	 * @return
	 */
	public List<T> findAll(Object object);

}

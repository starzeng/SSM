package com.oa.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.poi.ss.formula.functions.T;
import org.springframework.stereotype.Service;

import com.oa.base.Const;
import com.oa.dao.IUserDao;
import com.oa.modle.Admin;
import com.oa.modle.User;
import com.oa.service.IUserService;
import com.oa.utils.SessionUtils;

/**
 * 业务处理层
 * 
 * @author Administrator
 *
 */
@Service
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao userDao;

	@Override
	@SuppressWarnings("unchecked")
	public List<T> list() {
		User user = new User();
		Admin admin = (Admin) SessionUtils.get(Const.ADMIN_SESSION_KEY);
		int orgId = admin.getOrgId();
		user.setOrgId(orgId);
		List<T> list = userDao.findAll(user);
		return list;
	}

	@Override
	public boolean add(User user) {
		Admin admin = (Admin) SessionUtils.get(Const.ADMIN_SESSION_KEY);
		int orgId = admin.getOrgId();
		user.setOrgId(orgId);
		userDao.add(user);
		System.err.println(user);
		return false;
	}

	@Override
	public void delete(User user) {
		userDao.delete(user);
	}

}

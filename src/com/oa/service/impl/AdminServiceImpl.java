package com.oa.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oa.dao.IAdminDao;
import com.oa.modle.Admin;
import com.oa.service.IAdminService;
import com.oa.utils.MD5Util;

@Service
public class AdminServiceImpl implements IAdminService {

	@Resource
	private IAdminDao adminDao;

	@Override
	public Admin findToAccount(String account) {
		Admin admin = new Admin();
		admin.setAccount(account);
		admin = (Admin) adminDao.findOne(admin);
		System.err.println(admin);
		return admin;
	}

	@Override
	public Admin findToAccountAndPswd(String account, String pswd) {
		Admin admin = new Admin();
		admin.setAccount(account);
		admin.setPswd(MD5Util.create(pswd));
		return (Admin) adminDao.findOne(admin);
	}

}

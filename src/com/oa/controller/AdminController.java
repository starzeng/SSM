package com.oa.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oa.base.BaseController;
import com.oa.base.Const;
import com.oa.modle.Admin;
import com.oa.service.IAdminService;
import com.oa.utils.SessionUtils;

/**
 * 登录模块
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController implements BaseController {

	@Resource
	private IAdminService adminService;

	/**
	 * 登陆页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping
	public String index(HttpServletRequest request) {
		Object object = SessionUtils.get(Const.ADMIN_SESSION_KEY);
		System.err.println("Session ==> " + object);
		if (object != null) {// 登录调到首页
			return "admin/index";
		}
		return "admin/login";
	}

	// /**
	// * 前端AJAX登陆参数验证接口
	// *
	// * @param request
	// * @return true|false
	// */
	// @ResponseBody
	// @RequestMapping("/verify")
	// public boolean verify(HttpServletRequest request) {
	// String account = (String) request.getParameter("account");
	// String pswd = (String) request.getParameter("pswd");
	// System.err.println(account + " -- " + pswd);
	// if (pswd == null) {// 验证账号
	// if (adminService.findToAccount(account) != null) {
	// return true;
	// }
	// }
	// if (account != null && pswd != null) {// 验证账号密码是否正确
	// if (adminService.findToAccountAndPswd(account, pswd) != null) {
	// return true;
	// }
	// }
	// return false;
	// }

	/**
	 * 登录成功跳转首页
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		String account = (String) request.getParameter("account");
		String pswd = (String) request.getParameter("pswd");
		Admin admin = adminService.findToAccountAndPswd(account, pswd);
		if (admin != null) {
			SessionUtils.add(request, Const.ADMIN_SESSION_KEY, admin);
			return "admin/index";
		}
		return "admin/login";
	}

	/**
	 * 登出
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/logout")
	public String login(HttpServletRequest request) {
		SessionUtils.remove(Const.ADMIN_SESSION_KEY);
		return "admin/login";
	}

}

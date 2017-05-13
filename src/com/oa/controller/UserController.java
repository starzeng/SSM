package com.oa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oa.base.BaseController;
import com.oa.base.Const;
import com.oa.modle.User;
import com.oa.service.IUserService;
import com.oa.utils.MD5Util;
import com.oa.utils.SessionUtils;

/**
 * 用户管理模块
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin/user")
public class UserController implements BaseController {

	@Resource
	private IUserService userService;

	public UserController() {
		System.err.println("UserController");
	}

	/**
	 * 列表
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		if (SessionUtils.get(Const.ADMIN_SESSION_KEY) == null) {
			return "admin/login";
		}
		List<User> list = userService.list();
		System.err.println(list);
		model.addAttribute("list", list);
		return "admin/user/list";
	}

	/**
	 * 添加
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/add")
	public String add(HttpServletRequest request, Model model) {
		if (SessionUtils.get(Const.ADMIN_SESSION_KEY) == null) {
			return "admin/login";
		}
		String account = request.getParameter("account");
		String pswd = MD5Util.create("123456");// 默认密码
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		int deptId = Integer.parseInt("" + request.getParameter("deptId"));
		User user = new User();
		user.setAccount(account);
		user.setPswd(pswd);
		user.setName(name);
		user.setTel(tel);
		user.setDeptId(deptId);
		userService.add(user);
		return "redirect:list";
	}

	/**
	 * 删除信息
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(int id) {
		System.err.println("delete id : " + id);
		User user = new User();
		user.setId(id);
		userService.delete(user);
		return "redirect:list";
	}

}

package com.oa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oa.base.BaseController;

/**
 * 部门管理模块
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin/dept")
public class DeptController implements BaseController {

	/**
	 * 列表
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		return "admin/dept/list";
	}

}

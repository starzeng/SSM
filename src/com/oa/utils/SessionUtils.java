package com.oa.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {

	/** 当前用户的session */
	private static HttpSession session;

	/**
	 * 获取session
	 * 
	 * @param request
	 * @return
	 */
	public static Object get(String key) {
		if (session == null) {
			return null;
		}
		return session.getAttribute(key);
	}

	/**
	 * 添加数据到session中
	 * 
	 * @param request
	 * @param key
	 * @param object
	 */
	public static void add(HttpServletRequest request, String key, Object object) {
		session = request.getSession();
		session.setAttribute(key, object);
	}

	/**
	 * 移除session中对应的数据
	 * 
	 * @param request
	 * @param key
	 */
	public static void remove(String key) {
		if (session != null) {
			session.removeAttribute(key);
		}
	}

}

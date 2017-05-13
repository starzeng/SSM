package com.oa.utils;

import javax.servlet.http.HttpServletRequest;

public class HttpUtils {

	/**
	 * 是get请求
	 * 
	 * @param request
	 * @return
	 */
	public static boolean isget(HttpServletRequest request) {
		return "GET".equals(request.getMethod()) ? true : false;
	}

	/**
	 * 是post请求
	 * 
	 * @param request
	 * @return
	 */
	public static boolean ispost(HttpServletRequest request) {
		return "POST".equals(request.getMethod()) ? true : false;
	}

}

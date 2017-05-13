package com.oa.utils;

public class Response {

	private static Result result = null;

	/**
	 * 失败信息
	 * 
	 * @param m
	 *            失败消息
	 * @return
	 */
	public static Result failed(String m) {
		result = new Result();
		result.setO(0);
		result.setM(m);
		return result;
	}

	/**
	 * 
	 * @param m
	 *            成功消息
	 * @param object
	 *            返回数据对象
	 * @return
	 */
	public static Result success(String m, Object object) {
		result = new Result();
		result.setO(0);
		result.setM(m);
		result.setO(object);
		return result;
	}

	/**
	 * 自定义返回信息
	 * 
	 * @param c
	 *            返回码
	 * @param m
	 *            返回消息
	 * @param list
	 *            返回数据对象
	 * @param e
	 * @return
	 */
	public static Result print(int c, String m, Object object, String e) {
		result = new Result();
		result.setC(c);
		result.setM(m);
		result.setO(object);
		result.setE(e);
		return result;
	}

}

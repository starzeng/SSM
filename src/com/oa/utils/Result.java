package com.oa.utils;

/**
 * 接口返回格式
 * 
 * @author Administrator
 *
 */
public class Result {

	private int c;// 返回码
	private String m = "";// 消息
	private Object o = null;// 数据对象
	private Object e = null;// 扩展对象

	public int getC() {
		return c;
	}

	public void setC(int c) {
		this.c = c;
	}

	public String getM() {
		return m;
	}

	public void setM(String m) {
		this.m = m;
	}

	public Object getO() {
		return o;
	}

	public void setO(Object o) {
		this.o = o;
	}

	public Object getE() {
		return e;
	}

	public void setE(Object e) {
		this.e = e;
	}

}

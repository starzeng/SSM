package com.oa.utils;

import java.util.Date;

/**
 * 日期时间工具类
 * 
 * @author Administrator
 *
 */
public class DateUtils {

	/**
	 * 获取当前时间戳
	 * 
	 * @return 除以1000获取秒
	 */
	public static int getCurrentTimestamp() {
		Date date = new Date();
		long timestamp = date.getTime();
		return (int) (timestamp / 1000);
	}

}

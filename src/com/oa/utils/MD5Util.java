package com.oa.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {

	/**
	 * 生成md5校验码
	 * 
	 * @param string
	 *            需要加密的数据
	 * @return 加密后的md5校验码。出错则返回null。
	 */
	public static String create(String string) {
		if (string == null) {
			return null;
		}
		String strDes = null;
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			md5.update(string.getBytes());
			strDes = bytes2Hex(md5.digest()); // to HexString
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		return strDes;
	}

	/**
	 * 字节数组转16进制
	 * 
	 * @param byteArray
	 *            字节数组
	 * @return
	 */
	private static String bytes2Hex(byte[] byteArray) {
		StringBuffer strBuf = new StringBuffer();
		for (int i = 0; i < byteArray.length; i++) {
			if (byteArray[i] >= 0 && byteArray[i] < 16) {
				strBuf.append("0");
			}
			strBuf.append(Integer.toHexString(byteArray[i] & 0xFF));
		}
		return strBuf.toString();
	}

}
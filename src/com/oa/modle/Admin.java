package com.oa.modle;

import java.sql.Timestamp;

/**
 * oa_admin表实体
 * <p>
 * 超级管理员登录账号, 第三方管理后台账号;
 * </p>
 * 
 * @author Administrator
 *
 */
public class Admin {
	/** ID */
	private int id;
	/** 账号 */
	private String account;
	/** 密码 */
	private String pswd;
	/** 创建时间 */
	private Timestamp createtime;
	/** 最后登录时间 */
	private Timestamp lastlogintime;
	/** 最后登出时间 */
	private Timestamp lastlogouttime;
	/** 最后登录IP地址 */
	private Timestamp lastloginip;
	/** 是否弃用: 1正常; 2弃用; */
	private int state;
	/** 公司/组织ID */
	private int orgId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPswd() {
		return pswd;
	}

	public void setPswd(String pswd) {
		this.pswd = pswd;
	}

	public Timestamp getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	public Timestamp getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(Timestamp lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public Timestamp getLastlogouttime() {
		return lastlogouttime;
	}

	public void setLastlogouttime(Timestamp lastlogouttime) {
		this.lastlogouttime = lastlogouttime;
	}

	public Timestamp getLastloginip() {
		return lastloginip;
	}

	public void setLastloginip(Timestamp lastloginip) {
		this.lastloginip = lastloginip;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getOrgId() {
		return orgId;
	}

	public void setOrgId(int orgId) {
		this.orgId = orgId;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", account=" + account + ", pswd=" + pswd + ", createtime=" + createtime
				+ ", lastlogintime=" + lastlogintime + ", lastlogouttime=" + lastlogouttime + ", lastloginip="
				+ lastloginip + ", state=" + state + ", orgId=" + orgId + "]";
	}

}

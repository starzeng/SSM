package com.oa.modle;

import java.sql.Timestamp;

/**
 * oa_user表实体
 * 
 * @author Administrator
 *
 */
public class User {

	/** ID */
	private int id;
	/** 账号 */
	private String account;
	/** 密码 */
	private String pswd;
	/** 注册IP */
	private String regIp;
	/** 姓名 */
	private String name;
	/** 手机号 */
	private String tel;
	/** 头像URL */
	private String icon;
	/** 等级 */
	private int lv;
	/** 绩效分 */
	private int kpi;
	/** 注册时间 */
	private Timestamp createtime;
	/** 最后一次登录时间 */
	private Timestamp lastlogintime;
	/** 最后一次登出时间 */
	private Timestamp lastlogouttime;
	/** 注册状态: 1:注册成功未选组织; 2:已选组织; */
	private int state;
	/** 组织ID */
	private int orgId;
	/** 部门ID */
	private int deptId;

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

	public String getRegIp() {
		return regIp;
	}

	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public int getKpi() {
		return kpi;
	}

	public void setKpi(int kpi) {
		this.kpi = kpi;
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

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", pswd=" + pswd + ", regIp=" + regIp + ", name=" + name
				+ ", tel=" + tel + ", icon=" + icon + ", lv=" + lv + ", kpi=" + kpi + ", createtime=" + createtime
				+ ", lastlogintime=" + lastlogintime + ", lastlogouttime=" + lastlogouttime + ", state=" + state
				+ ", orgId=" + orgId + ", deptId=" + deptId + "]";
	}

}

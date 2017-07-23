package org.fkit.ebuy.domain;

import java.io.Serializable;


public class Admin implements Serializable{

	private Integer id;			// id
	private String adminloginname;	// 登录名
	private String adminpassword;	// 密码
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAdminloginname() {
		return adminloginname;
	}
	public void setAdminloginname(String adminloginname) {
		this.adminloginname = adminloginname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
}
package org.fkit.ebuy.service;

import org.fkit.ebuy.domain.Admin;

/**
 * User服务层接口
 * */
public interface AdminService {

	Admin adminlogin(String adminloginname,String adminpassword);
}

package org.fkit.ebuy.controller;

import static org.junit.Assert.*;

import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class UserControllerTest {
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Test
	public void testRegister() {
		User register  = userService.register("1", "1","1","1@1","1");
		System.out.println("注册成功");
		
	}

	@Test
	public void testLogin() {
		User user = userService.login("123", "123456");
		if (user!=null){
				System.out.println("登录成功");
		}
		else{
			System.out.println("登录失败");
		}
		
	}

	@Test
	public void testFind() {
		User user1=userService.protect("123","123","123@123","123");
		System.out.println("找回密码成功");
		System.out.println(user1.getPassword());
		}


	@Test
	public void testAlterpassword() {
		User register = userService.alterpassword("123","12345");
		System.out.println("修改成功");
	}

}

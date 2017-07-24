package org.fkit.ebuy.controller;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.service.CollectService;
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
public class CollectControllerTest {
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	@Test
	public void testCollection() {
		
	}

	@Test
	public void testNewcollect() {
		List<Collect> collect_list = collectService.getAll("123");
		System.out.println(collect_list);
		
	}

}

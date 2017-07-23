package org.fkit.ebuy.controller;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class ShopController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("shopService")
	private ShopService shopService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/shop")
	 public String shop(Model model){
		// 获得所有图书集合
		List<Product> product_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "shop";
	}
	@RequestMapping(value="/vivo")
	 public String canvasbag(Model model){
		// 获得所有图书集合
		List<Product> vivo_list = shopService.getAll4();
		// 将图书集合添加到model当中
		model.addAttribute("vivo_list", vivo_list);
		// 跳转到main页面
		return "vivo";
	}
	@RequestMapping(value="/oppo")
	 public String nike (Model model){
		// 获得所有图书集合
		List<Product> oppo_list = shopService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("oppo_list", oppo_list);
		// 跳转到main页面
		return "oppo";
	}
	@RequestMapping(value="/huawei")
	 public String adidas(Model model){
		// 获得所有手机壳集合
		List<Product>huawei_list = shopService.getAll3();
		// 将手机壳集合添加到model当中
		model.addAttribute("huawei_list", huawei_list);
		// 跳转到main页面
		return "huawei";
	}
	@RequestMapping(value="/xiaomi")
	 public String aj(Model model){
		// 获得所有卫衣集合
		List<Product> xiaomi_list = shopService.getAll2();
		// 将卫衣集合添加到model当中
		model.addAttribute("xiaomi_list", xiaomi_list);
		// 跳转到main页面
		return "xiaomi";
	}
	@RequestMapping(value="/chuizi")
	 public String asics(Model model){
		// 获得所有亚瑟士集合
		List<Product> chuizi_list = shopService.getAll5();
		// 将亚瑟士集合添加到model当中
		model.addAttribute("chuizi_list", chuizi_list);
		// 跳转到main页面
		return "chuizi";
	}
	@RequestMapping(value="/product")
	 public String look(int id,
			 Model model){
		// 获得所有图书集合
		List<Product> p_list = shopService.getAll6(id);
		// 将图书集合添加到model当中
		model.addAttribute("p_list", p_list);
		// 跳转到main页面
		return "product";
	}
}

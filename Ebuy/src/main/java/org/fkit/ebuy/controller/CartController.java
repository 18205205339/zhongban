package org.fkit.ebuy.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**sdsddsdsds
 * 处理图书请求控制器
 * */
@Controller
public class CartController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/cart")
	 public String cart(Model model,
			 String username){
		// 获得所有图书集合
		List<Cart> cart_list = cartService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到main页面
		return "cart";
	}
	@RequestMapping(value = "/save")
	public String save(HttpServletRequest request,Model model) {
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		Cart cart=cartService.findCart(product_id_);
		if (cart == null) {
			cartService.saveCart(product_id_);
		}else {			
			cartService.addCart(product_id_);	
		}
		List<Cart> cart_list = cartService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
	
	//清空购物车
	@RequestMapping(value = "/clear")
	public String clear(Model model) {
		cartService.clearCart();
		List<Cart> cart_list = cartService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到main页面
		return "cart";

	}
	//从购物车里增加数量
		@RequestMapping(value="/increase")
		public String increase(Model model,HttpServletRequest request){
			String product_id = request.getParameter("product_id");
			int product_id_ = Integer.parseInt(product_id);
			cartService.increaseCart(product_id_);
			List<Cart> cart_list = cartService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("cart_list", cart_list);
			// 跳转到cart页面
			return "cart";
		}
	//从购物车里减少数量
	@RequestMapping(value="/reduce")
	public String reduce(Model model,HttpServletRequest request){
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		cartService.reduceCart(product_id_);
		List<Cart> cart_list = cartService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
	//取消购物车的东西
	@RequestMapping(value="/remove")
	public String remove(Model model,HttpServletRequest request){
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		cartService.removeCart(product_id_);
		List<Cart> cart_list = cartService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("cart_list", cart_list);
		// 跳转到cart页面
		return "cart";
	}
	@RequestMapping(value="/insertproduct")
	 public ModelAndView insertproduct(
						String name,
						String price, 
						String descripts, 
						String image,
						String image2,
						String image3,
						String image4,
						String image5,
						String stock,
						int sales,
						int typeid,
						
					   ModelAndView mv ){
	   Cart insertproduct  = cartService.insertproduct(name, price,descripts,image,image2,image3,image4,image5,stock,sales,typeid);
		   if(insertproduct != null){
				// 转发到loginForm请求
				mv.setViewName("add");
			}
			else{
				// 注册失败，设置失败提示信息，并跳转到注册页面
				mv.addObject("message", "注册成功，请登录!");
				mv.setViewName("add");
			}
			return mv;
	 }
	
	
	

}


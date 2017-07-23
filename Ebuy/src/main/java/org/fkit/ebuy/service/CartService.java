package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Cart;



/**
 * Book服务层接口
 * */
public interface CartService {
	
	List<Cart> getAll();
	Cart findCart(int product_id);
	void  saveCart(int product_id);
	void  addCart(int product_id);	
	void  reduceCart(int product_id);
	void  increaseCart(int product_id);
	void  removeCart(int product_id);
	void clearCart();
}
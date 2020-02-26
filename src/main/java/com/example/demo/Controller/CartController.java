package com.example.demo.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entity.Cart;
import com.example.demo.Entity.User;
import com.example.demo.Service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	
	@Autowired
	CartService service;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("/add")
	public @ResponseBody boolean saveUser(@RequestParam String item_type,@RequestParam long item_id,@RequestParam int quantity,HttpSession session1) {
		
		try {
			
			User u=(User)session.getAttribute("user");
			Cart cart=new Cart();
				cart.setItem_id(item_id);
				cart.setItem_type(item_type);
				cart.setQuantity(quantity);
				cart.setUser_id(u.getId());
			
			return service.saveUser(cart);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	
	@DeleteMapping("/delete/{id}")
	public @ResponseBody boolean deleteCart(@PathVariable("id") long menu_id) {
		
		try {
			User u=(User)session.getAttribute("user");
			return service.deleteCart(menu_id,u.getId());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
	}

}

package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.Cart;
import com.example.demo.Entity.Menu;
import com.example.demo.Entity.MenuPackage;
import com.example.demo.Entity.User;
import com.example.demo.Entity.ViewCart;
import com.example.demo.Repo.CartRepo;

@Service
public class CartService {
	
	@Autowired
	CartRepo repo;
	
	@Autowired
	HttpSession session;
	
	
	@Autowired
	MenuService menu;
	
	@Autowired
	PackageService pacService;
	public boolean saveUser(Cart cart) {
		
		try {
			
			repo.save(cart);
			
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
		
		
	}


	public boolean deleteCart(long id,long user_id) {
		// TODO Auto-generated method stub
		
		try {
			
			repo.deleteMenuId(id,user_id);
			return true;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
	}
	
	
	public List<ViewCart> getView(){
		
		try {
			User u=(User)session.getAttribute("user");
			List<ViewCart> list=new ArrayList<>();
			
				List<Cart> cart=repo.findCartUser(u.getId());
				
				 for(Cart c:cart) {
					 ViewCart car=new ViewCart();
					 
					 if(c.getItem_type().equalsIgnoreCase("menu")) {
						 
						 Menu m=menu.getById(c.getItem_id());
						  car.setId(m.getId());
						  car.setImg(m.getTitle());
						  car.setItem_id(m.getId());
						  car.setItem_type("menu");
						  car.setTitle(m.getTitle());
						  car.setUser_id(u.getId());
						 
					 }
					 
					 if(c.getItem_type().equalsIgnoreCase("pacakge")) {
						 
						MenuPackage m=pacService.getById(c.getItem_id()); 
						  car.setId(m.getId());
						  car.setImg(m.getTitle());
						  car.setItem_id(m.getId());
						  car.setItem_type("menu");
						  car.setTitle(m.getTitle());
						  car.setUser_id(u.getId());
					 }
					 
					 list.add(car);
					  
				 }
			
			
			
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

}

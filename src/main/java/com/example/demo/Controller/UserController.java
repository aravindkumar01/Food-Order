package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entity.User;
import com.example.demo.Service.UserService;

@Controller
public class UserController {

	
	@Autowired
	UserService service;
	
	@PostMapping("/user/add")
	public @ResponseBody boolean add(@RequestBody User user) {
		
		
		try {
			
			boolean l=service.userAdd(user);
			
			if(l) {
				return  true;
			}
			return false;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	
	@PutMapping("/user/update")
	public @ResponseBody boolean updateUser(@RequestBody User user) {
		
		
		try {
			
			return service.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	
}

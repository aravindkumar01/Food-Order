package com.example.demo.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entity.Login;
import com.example.demo.Entity.User;
import com.example.demo.Service.LoginService;
import com.example.demo.Service.PackageService;
import com.example.demo.Service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService service;
	

	@Autowired
	PackageService pacService;
	
	@Autowired
	UserService userService;
	
	@GetMapping("/login")
	public @ResponseBody Login addUser(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session) {
		try {
			
			Login log=service.findLogin(username,password);
			

		//	model.addAttribute("user",log.getRole());	
			
			
			if(log!=null) {
				session.setAttribute("login", log);
				User u=userService.getUser(log.getUsername());
				session.setAttribute("user", u);
				return log;
			}
			
			
			return null;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			
			
		}
	}

}

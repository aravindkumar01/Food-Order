package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Entity.Login;
import com.example.demo.Entity.MenuPackage;
import com.example.demo.Service.LoginService;
import com.example.demo.Service.PackageService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService service;
	

	@Autowired
	PackageService pacService;
	
	@PostMapping("/login")
	public ModelAndView addUser(@RequestBody Login login,ModelMap model,HttpSession session) {
		try {
			
			Login log=service.findLogin(login.getUsername(), login.getPassword());
			

			model.addAttribute("user",log.getRole());	
			
			
			if(log!=null) {
				
				List<MenuPackage> menu=new ArrayList<>();
				menu=pacService.getAll();
				System.out.println(menu);
				ModelAndView model1 = new ModelAndView("packages");
				model1.addObject("user", "admin");				
				model1.addObject("lists", menu);

			
			//return new ModelAndView("packages");
			return model1;
			}
			
			model.addAttribute("error","Username or password wrong!");	
			
			return new ModelAndView("redirect:/login");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error","Username or password wrong!");				
			return new ModelAndView("redirect:/login");
			
			
		}
	}

}

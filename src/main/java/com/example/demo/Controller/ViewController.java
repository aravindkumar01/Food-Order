package com.example.demo.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

	

	
	
	@RequestMapping("/menuDetails")
	public String menuDetails() {
		
		return "menuDetails";
	}

	
	@RequestMapping("/departmentDetails")
	public String departmentDetails() {
		
		return "departmentDetails";
	}
	
	
	
	@RequestMapping("/")
	public String home() {
		
		return "menuDetails";
	}
	
	
	@RequestMapping("/addMenu")
	public String addMenu() {
		
		return "addMenu";
	}
	
	
	
	
	@GetMapping("/login/menu")
	public  ModelAndView menu(ModelMap model,HttpSession session){
		
	
		
		try {
		//	Login l=(Login)session.getAttribute("user");
			
		//System.out.println(l.getUsername()+"---------"+l.getRole());
		//	model.addAttribute("userType",l.getRole());
			//model.addObject("employeeObj", new EmployeeBean(123));
			//model.addObject("msg", "Employee information.");
			return new ModelAndView("menu");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}

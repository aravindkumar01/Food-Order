package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Entity.MenuPackage;
import com.example.demo.Service.PackageService;

@Controller
public class ViewController {

	
	@Autowired
	PackageService pacService;

	
	
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
	
	
	@RequestMapping("/packages")
	public ModelAndView packages(ModelMap model,HttpSession session) {
		
		try {
			
			List<MenuPackage> menu=new ArrayList<>();
				menu=pacService.getAll();
				System.out.println(menu);
				ModelAndView model1 = new ModelAndView("packages");
				model1.addObject("lists", menu);

			
			//return new ModelAndView("packages");
			return model1;
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	@RequestMapping("/addPackage")
	public ModelAndView addPackages(ModelMap model,HttpSession session) {
		
		try {
			
			model.addAttribute("persons","");
			return new ModelAndView("addPackage");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
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

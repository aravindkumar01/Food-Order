package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Entity.Menu;
import com.example.demo.Entity.MenuPackage;
import com.example.demo.Entity.User;
import com.example.demo.Entity.ViewCart;
import com.example.demo.Service.CartService;
import com.example.demo.Service.MenuService;
import com.example.demo.Service.PackageService;

@Controller
public class ViewController {

	
	@Autowired
	PackageService pacService;

	
	@Autowired
	MenuService menuSer;
	
	@Autowired
	CartService cartService;
	
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/departmentDetails")
	public String departmentDetails() {
		
		return "departmentDetails";
	}
	
	
	
	@RequestMapping("/")
	public String home() {
		
		return "login";
	}
	

	@RequestMapping("/register")
	public String register() {
		
		return "register";
	}
	
	
	@RequestMapping("/logout")
	public String register(HttpSession session) {
		
		session.removeAttribute("user");
		return "login";
	}
	



	

	
	@RequestMapping("/payment")
	public ModelAndView payment(ModelMap model,HttpSession session) {
		
		try {
			User u=(User)session.getAttribute("user");
			
				if(u==null) {
					
					return new ModelAndView("login");
				}


			List<ViewCart> list=cartService.getView();
			ModelAndView model1 = new ModelAndView("payment");
			model1.addObject("user", "admin");				
			model1.addObject("lists", list);
			//return new ModelAndView("packages");
			return model1;

		
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	


	
	@RequestMapping("/orderHistory")
	public ModelAndView orderHistory(ModelMap model,HttpSession session) {
		
		try {
			User u=(User)session.getAttribute("user");
			
				if(u==null) {
					
					return new ModelAndView("login");
				}


			List<ViewCart> list=cartService.getOrder();
			Map<String,List<ViewCart>> map=new HashMap<String, List<ViewCart>>();
				
				for(ViewCart s:list) {
					if(map.containsKey(s.getDate())) {
						List<ViewCart> cart=new ArrayList<ViewCart>();
								cart=map.get(s.getDate());
								cart.add(s);
								map.put(s.getDate(), cart);
								
								System.out.println("----------------exit---"+map);
					}else {
						List<ViewCart> cart=new ArrayList<ViewCart>();
						cart.add(s);
						map.put(s.getDate(), cart);
						System.out.println("--------------new------------"+map);
					}
					
				}
				
			ModelAndView model1 = new ModelAndView("orderHistory");
			model1.addObject("role", u.getRole());				
			//model1.addObject("lists", list);
			model1.addObject("lists", map);
			//return new ModelAndView("packages");
			return model1;

		
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	

	
	@RequestMapping("/cart")
	public ModelAndView cart(ModelMap model,HttpSession session) {
		
		try {
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}


			List<ViewCart> list=cartService.getView();
			ModelAndView model1 = new ModelAndView("cart");
			model1.addObject("user", "admin");				
			model1.addObject("lists", list);
			//return new ModelAndView("packages");
			return model1;

		
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	@RequestMapping("/addMenu")
	public ModelAndView addMenu(ModelMap model,HttpSession session) {
		
		try {
			
			
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			
			model.addAttribute("user", "admin");	
			return new ModelAndView("addMenu");
			
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	@RequestMapping("/userAccount")
	public ModelAndView userAccont(ModelMap model,HttpSession session1) {
		
		try {
			
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			
			model.addAttribute("name", u.getName());
			model.addAttribute("id", u.getId());	
			model.addAttribute("gender",u.getGender());
			model.addAttribute("email",u.getEmail());
			model.addAttribute("phone",u.getPhone());
			model.addAttribute("address",u.getAddress());
			model.addAttribute("city",u.getCity());
			model.addAttribute("state", u.getState());
			
			
			model.addAttribute("user", "admin");	
			return new ModelAndView("userAccount");
			
			//return "packages";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	

	@RequestMapping("/menuDetails")
	public ModelAndView menuDetails(ModelMap model,HttpSession session) {
		
		try {
			
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			List<Menu> menu=new ArrayList<>();
			menu=menuSer.getAll();
			System.out.println(menu);
			ModelAndView model1 = new ModelAndView("menuDetails");
			model1.addObject("user", u.getRole());				
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
	
	
	
	
	@RequestMapping("/packages")
	public ModelAndView packages(ModelMap model,HttpSession session) {
		
		try {
			
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			List<MenuPackage> menu=new ArrayList<>();
				menu=pacService.getAll();
				System.out.println(menu);
				ModelAndView model1 = new ModelAndView("packages");
				model1.addObject("user", "admin");				
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
	
	
	@RequestMapping(value = "/viewPackage", method=RequestMethod.GET)
	public ModelAndView viewPackage(@RequestParam("id") long id) {
		
		try {
			
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			
			MenuPackage menu=pacService.getById(id);
				System.out.println(menu);
				ModelAndView model1 = new ModelAndView("viewPackage");
				model1.addObject("user", "admin");				
				//model1.addObject("package", menu);
				model1.addObject("title", menu.getTitle());
				model1.addObject("status", menu.getStatus());
				model1.addObject("package_id", menu.getId());
				model1.addObject("cost", menu.getCost());
						
			
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
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			
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
			User u=(User)session.getAttribute("user");
			
			if(u==null) {
				
				return new ModelAndView("login");
			}
			
			 model.addAttribute("username",u.getEmail());
		    model.addAttribute("userType",u.getRole());
			return new ModelAndView("menu");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}

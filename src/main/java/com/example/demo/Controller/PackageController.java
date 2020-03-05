package com.example.demo.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Entity.MenuPackage;
import com.example.demo.Service.PackageService;

@Controller
@RequestMapping("/package")
public class PackageController {
	
	
	@Autowired
	ServletContext context;
	
	@Autowired
	PackageService service;
	@PostMapping("/add")
	public  ModelAndView add(HttpServletRequest request, HttpServletResponse response,@RequestParam("file") MultipartFile file) {
		
		try {
			
			    Part filePart =request.getPart("file");
			   
			    String absolutePath = context.getRealPath("/images/packages/").toString();
			
			    System.out.println(absolutePath);
			    	
			    		
			    
			MenuPackage entity=new MenuPackage();
						entity.setTitle(request.getParameter("title"));
						entity.setCost(request.getParameter("cost"));
						entity.setDescription(request.getParameter("description"));
						entity.setStatus(request.getParameter("status"));
		
						 String path=absolutePath+entity.getTitle()+".jpeg";
						entity.setImg_path(absolutePath);
						  byte[] bytes = file.getBytes();

							// Creating the directory to store file
							File serverFile=new File(path);
							
							BufferedOutputStream stream = new BufferedOutputStream(
									new FileOutputStream(serverFile));
							stream.write(bytes);
							stream.close();
					        
							
			 service.add(entity);
			 //return new ModelAndView("addPackage");
			 return new ModelAndView("redirect:/packages");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("redirect:/");
			// TODO: handle exception
		}
	}
	
	
	@GetMapping("/all")
	public @ResponseBody List<MenuPackage> getAll(){
		
		try {
			
			return service.getAll();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
	}
	
	
	
	@GetMapping("/{id}")
	public @ResponseBody MenuPackage getById(@PathVariable("id") long id) {
		try {
			
			return service.getById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
	}
	
	
	@GetMapping("/delete")
	public @ResponseBody boolean delete(@RequestParam("id") long id) {
		
		try {
			System.out.println("----------------------id"+id);
			return service.deleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	

}

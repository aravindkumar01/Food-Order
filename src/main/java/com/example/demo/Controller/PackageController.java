package com.example.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entity.MenuPackage;
import com.example.demo.Service.PackageService;

@Controller
@RequestMapping("/package")
public class PackageController {
	
	
	@Autowired
	PackageService service;
	@PostMapping("/add")
	public @ResponseBody boolean add(@RequestBody MenuPackage entity) {
		
		try {
			
			return service.add(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return true;
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
	public @ResponseBody Optional<MenuPackage> getById(@PathVariable("id") long id) {
		try {
			
			return service.getById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
	}
	
	
	@DeleteMapping("/{id}")
	public @ResponseBody boolean delete(@PathVariable("id") long id) {
		
		try {
			return service.deleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	

}

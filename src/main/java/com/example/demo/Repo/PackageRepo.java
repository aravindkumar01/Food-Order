package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.MenuPackage;

@Repository
public interface PackageRepo extends JpaRepository<MenuPackage, Long>{

	@Query("select m from MenuPackage m where m.id=:id")
	MenuPackage findmenu(Long id);
	
}



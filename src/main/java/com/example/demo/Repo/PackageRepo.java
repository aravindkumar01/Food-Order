package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.MenuPackage;

@Repository
public interface PackageRepo extends JpaRepository<MenuPackage, Long>{

}



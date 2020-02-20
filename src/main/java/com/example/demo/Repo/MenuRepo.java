package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.Menu;

@Repository
public interface MenuRepo extends JpaRepository<Menu, Long>{

}

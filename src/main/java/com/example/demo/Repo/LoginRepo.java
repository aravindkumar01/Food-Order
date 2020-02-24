package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.Login;

@Repository
public interface LoginRepo extends JpaRepository<Login, Long>{

	@Query("select l from Login where l.username=:username and l.password=:password")
	Login findLogin(String username,String password);
}

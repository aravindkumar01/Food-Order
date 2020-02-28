package com.example.demo.Repo;

import java.security.Timestamp;
import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Long>{

	@Transactional
	@Modifying
	@Query("delete from Cart c where c.item_id=:item_id and c.user_id=:user_id")
	void deleteMenuId(long item_id,long user_id);

	@Query("select c from Cart c where c.user_id=:id and c.payment=:payment")
	List<Cart> findCartUser(Long id,boolean payment);
	
	@Transactional
	@Modifying
	@Query("update Cart c set c.payment=true  where c.user_id=:user_id")
	void updateCartStatus(long user_id);

	
}

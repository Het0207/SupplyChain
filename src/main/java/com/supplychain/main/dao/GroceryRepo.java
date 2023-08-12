package com.supplychain.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.supplychain.main.models.Grocery;
import com.supplychain.main.models.User;

public interface GroceryRepo extends JpaRepository<Grocery, Long>{
	@Transactional
	@Modifying
	@Query("update Grocery set quantity = ?1 where id = ?2")
	void update(int quantity, long prodID);
	
	@Query("select quantity from Grocery where id=?1")
	int getQuantity(long prodID);
	
	@Query("select sellPrice from Grocery where id = ?1")
	double getSellPrice(long prodID);
	
	@Query("select photo from Grocery where id = ?1")
	String getPhoto(long prodID);
	
	@Query("select name from Grocery where id = ?1")
	String getname(long prodID);
	
	
	@Transactional
	@Modifying
	@Query("update Grocery set quantity = ?1, name=?2, costPrice=?3, sellPrice=?4 where id = ?5")
	void update(int quantity, String name, double cp, double sp, long prodID);
}

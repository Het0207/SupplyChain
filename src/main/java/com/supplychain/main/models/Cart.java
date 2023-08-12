package com.supplychain.main.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Cart {
	@Id
	@GeneratedValue
	long id;
	String username;
	long prodID;
	int quantity;
	String name;
	public Cart() {
		super();
		this.username = null;
		this.prodID = -1;
		this.quantity = 0;
		this.name = null;
	}
	public Cart(String username, long prodID, int quantity, String name) {
		super();
		this.username = username;
		this.prodID = prodID;
		this.quantity = quantity;
		this.name = name;
	}
	public Cart(long id, long prodID, int quantity, String username, String name) {
		super();
		this.id = id;
		this.username = username;
		this.prodID = prodID;
		this.quantity = quantity;
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getProdID() {
		return prodID;
	}
	public void setProdID(long prodID) {
		this.prodID = prodID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}

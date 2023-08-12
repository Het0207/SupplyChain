package com.supplychain.main.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Grocery {
	@Id
	@GeneratedValue
	long id;
	String name;
	double costPrice;
	double sellPrice;
	int quantity;
	String photo;
	
	
	
	
	public Grocery() {
		super();
		this.id = -1;
		this.name = null;
		this.costPrice = 0;
		this.sellPrice = 0;
		this.quantity = 0;
	}
	public Grocery(String name, double costPrice, double sellPrice, int quantity) {
		super();
		this.name = name;
		this.costPrice = costPrice;
		this.sellPrice = sellPrice;
		this.quantity = quantity;
	}
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}
	public double getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(double sellPrice) {
		this.sellPrice = sellPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Grocery [id=" + id + ", name=" + name + ", costPrice=" + costPrice + ", sellPrice=" + sellPrice
				+ ", quantity=" + quantity + "]";
	}
}

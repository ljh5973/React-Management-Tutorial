package com.itwill.utill;

import java.util.ArrayList;

public class AdminCriteria {

	private ArrayList<String> category;
	
	
	private int maxPrice;
	private int minPrice;
	
	public AdminCriteria() {
		// TODO Auto-generated constructor stub
	}

	public AdminCriteria(ArrayList<String> category, int maxPrice, int minPrice) {
		super();
		this.category = category;
		this.maxPrice = maxPrice;
		this.minPrice = minPrice;
	}

	public ArrayList<String> getCategory() {
		return category;
	}

	public void setCategory(ArrayList<String> category) {
		this.category = category;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}
	
	
}

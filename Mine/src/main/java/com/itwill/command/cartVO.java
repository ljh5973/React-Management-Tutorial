package com.itwill.command;

public class cartVO {
	
	private String product;
	private String userId;
	private int quantity;
	private int price;
	private int deliveryFee;
	private int totalPrice;
	
	public cartVO() {}

	public cartVO(String product, String userId, int quantity, int price, int deliveryFee, int totalPrice) {
		super();
		this.product = product;
		this.userId = userId;
		this.quantity = quantity;
		this.price = price;
		this.deliveryFee = deliveryFee;
		this.totalPrice = totalPrice;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "cartVO [product=" + product + ", userId=" + userId + ", quantity=" + quantity + ", price=" + price
				+ ", deliveryFee=" + deliveryFee + ", totalPrice=" + totalPrice + "]";
	}
	
}

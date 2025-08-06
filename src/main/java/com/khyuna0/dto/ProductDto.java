package com.khyuna0.dto;

public class ProductDto {
	private int num;
	private String product;
	private String color;
	private String quantity;
	
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ProductDto(int num, String product, String color, String quantity) {
		super();
		this.num = num;
		this.product = product;
		this.color = color;
		this.quantity = quantity;
	}

	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
	
	
}

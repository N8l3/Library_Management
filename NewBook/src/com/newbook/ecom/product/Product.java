package com.newbook.ecom.product;

import java.io.Serializable;

import javax.servlet.http.Part;

import com.mysql.*;


public class Product  implements Serializable
{
	private String name,desc,author,cat,price;
//	private Part img;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	/*
	 * public Part getImg() { return img; } public void setImg(Part p) { this.img =
	 * p; }
	 */
}

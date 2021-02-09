package com.newbook.ecom.servelets.login;

import java.io.Serializable;


public class L_User implements Serializable{
	private static final long serialVersionUID = 1L;
	private String email, pass,type;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}

package com.newbook.ecom.servlets.register;

import java.sql.*;

public class RegistrationDeo {
	public int register(User user) throws ClassNotFoundException{
		
		String r_query = " insert into users (name, mobile, address, email, pwd) values(?, ?, ?, ?, ?)";
		
		int result = 0;
		
		try {
			Connection con = Db_connect.getCon();
			
			PreparedStatement ps = con.prepareStatement(r_query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getMobile());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPass());
			
			
			result = ps.executeUpdate();
			System.out.println("Update is Successfull");
		} catch (Exception e) {
			System.out.println(e.getMessage());;
		}
		return result;
	}
}

package com.newbook.ecom.servlets.register;

import java.sql.*;

public class Db_connect {
	public static Connection con = null;
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib_manage", "root", "$antoshiMaa9");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getCon() {
		return con;
	}
}

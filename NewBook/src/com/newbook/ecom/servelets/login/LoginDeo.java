package com.newbook.ecom.servelets.login;

import java.sql.*;
import com.newbook.ecom.servlets.register.Db_connect;

public class LoginDeo {
	public L_User checkLogin(String email, String password) throws SQLException, ClassNotFoundException{
		
		Connection con = Db_connect.getCon();
		
		String l_query = "select * from customer where email=? and pwd=?";
		PreparedStatement ps = con.prepareStatement(l_query);
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet result = ps.executeQuery();
		
		L_User user = null;
		
		if(result.next()) {
			user = new L_User();
			user.setEmail(email);
		}
		return user;
	}
}

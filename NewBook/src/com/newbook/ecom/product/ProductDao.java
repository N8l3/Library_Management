package com.newbook.ecom.product;

import java.sql.*;
import com.newbook.ecom.servlets.register.Db_connect;
import com.newbook.ecom.servlets.register.User;

public class ProductDao {
	public int ProductDetails(Product prd) throws Exception{
	
	
	String r_query = "insert into product values (default,?,?,?,?,?)";
		
	int result = 0;

	try 
	{
		Connection con = Db_connect.getCon();
		
		PreparedStatement ps = con.prepareStatement(r_query);
		ps.setString(1, prd.getName());
		ps.setString(3, prd.getDesc());
		ps.setString(4, prd.getAuthor());
		ps.setString(5, prd.getCat());
		ps.setString(2, prd.getPrice());
//		ps.setBlob(6,(Blob) prd.getImg());
		
		result = ps.executeUpdate();
		System.out.println("Product is Added  Successfull");
	} 
	catch (Exception e)
	{
		System.out.println(e.getMessage());
	}
	return result;


	}
}
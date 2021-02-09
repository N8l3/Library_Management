package com.newbook.ecom.product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.newbook.ecom.servlets.register.Db_connect;
import com.newbook.ecom.servlets.register.User;

public class ProductDao {
	public int ProductDetails(Product p) throws Exception{
	
	
	String r_query = "insert into product values (default,?,?,?,?,?)";
		
	int result = 0;

	try 
	{
		Connection con = Db_connect.getCon();
		
		PreparedStatement ps = con.prepareStatement(r_query);
		ps.setString(1, p.getName());
		ps.setString(3, p.getDesc());
		ps.setString(4, p.getAuthor());
		ps.setString(5, p.getCat());
		ps.setString(2, p.getPrice());
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
	public static int update(Product p){
		int status=0;
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("update product set name=?,price=?,desc=?,author=? ,cat=? where name=?");
			ps.setString(1, p.getName());
			ps.setString(3, p.getDesc());
			ps.setString(4, p.getAuthor());
			ps.setString(5, p.getCat());
			ps.setString(2, p.getPrice());
//			ps.setInt(6,u.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	public static int delete(Product p){
		int status=0;
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("delete from product where name=?");
			ps.setString(1,p.getName());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	
	
	public static List<Product> getAllRecords()
	{
		List<Product> list=new ArrayList<Product>();
		
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from product");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Product p=new Product();
//				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setDesc(rs.getString("desc"));
				p.setCat(rs.getString("cat"));
				p.setPrice(rs.getString("price"));
				list.add(p);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	public static Product getRecordById(String name){
		Product p = null;
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from product where name=?");
			ps.setString(1,name);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				p=new Product();
//				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDesc(rs.getString("Desc"));
				p.setAuthor(rs.getString("Author"));
				p.setCat(rs.getString("cat"));
				p.setPrice(rs.getString("price"));
			}
		}catch(Exception e){System.out.println(e);}
		return p;
	}
	
	
}
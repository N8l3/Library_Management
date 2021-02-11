package com.newbook.ecom.product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.newbook.ecom.servlets.register.Db_connect;
import com.newbook.ecom.servlets.register.User;

public class ProductDao {
	public int ProductDetails(Product p) throws Exception
	{
	
	
	String r_query = "insert into products values (default,?,?,?,?,?)";
		
	int result = 0;

	try 
	{
		Connection con = Db_connect.getCon();
		
		PreparedStatement ps = con.prepareStatement(r_query);
//		ps.setInt(1, p.getId());
		ps.setString(1, p.getName());
		ps.setString(2, p.getDes());
		ps.setString(3, p.getAuthor());
		ps.setString(4, p.getCat());
		ps.setString(5, p.getPrice());
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
			
			System.out.println("Before");

			System.out.println("Name :"+p.getName()+"\n id: "+p.getId()+"\nDes :"+p.getDes()+"\nPrice :"+p.getPrice()+"\nAuthor :"+p.getAuthor());

			
			
			PreparedStatement ps=con.prepareStatement("update products set name=?,des=?,author=?,cat=?,price=? where id="+p.getId()+"");
			ps.setString(1,p.getName());
			ps.setString(2,p.getDes());
			ps.setString(3,p.getAuthor());
			ps.setString(4,p.getCat());
			ps.setString(5,p.getPrice());
//			ps.setInt(6,p.getId());
			status=ps.executeUpdate();
			

			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	public static int delete(Product p){
		int status=0;
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("DELETE FROM products WHERE (id = ?);");
			ps.setInt(1,p.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	
	
	public static List<Product> getAllRecords()
	{
		List<Product> list=new ArrayList<Product>();
		
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from products");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Product p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setDes(rs.getString("des"));
				p.setCat(rs.getString("cat"));
				p.setPrice(rs.getString("price"));
				list.add(p);
			}
		}catch(Exception e){System.out.println(e);}
		
		
		
		return list;
	}
	public static Product getRecordById(int id){
		Product p = null;
		try{
			Connection con=Db_connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from products where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				p=new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDes(rs.getString("Des"));
				p.setAuthor(rs.getString("Author"));
				p.setCat(rs.getString("cat"));
				p.setPrice(rs.getString("price"));
			}
		}catch(Exception e){System.out.println(e);}
		return p;
	}
	
	
}
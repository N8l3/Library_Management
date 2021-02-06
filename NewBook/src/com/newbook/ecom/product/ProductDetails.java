package com.newbook.ecom.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.omg.CORBA.portable.InputStream;

import com.sun.prism.Image;

/**
 * Servlet implementation class ProductDao
 */
@WebServlet("/ProductDetails")



public class ProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ProductDao prdao ;
	
	@Override
		public void init() throws ServletException {
		prdao = new ProductDao();
		
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/Html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("prdname");
		String desc = request.getParameter("prddesc");
		String author = request.getParameter("prdauthor");
		String cat = request.getParameter("prdcat");
		String price =request.getParameter("Prdprice");
//		byte img =Byte.parseByte(request.getParameter("prdimg"));
		
//		Part p = request.getPart("prdimg"); 
		
		System.out.println("name:"+name+"\tdesc"+desc+"\tauthor"+author+"\tcat"+cat+"\tprice"+price);
		
		
		Product prd = new Product();
		
		prd.setName(name);
		prd.setDesc(desc);
		prd.setAuthor(author);
		prd.setCat(cat);
		prd.setPrice(price);
//		prd.setImg(img);
		
		try 
		{
			prdao.ProductDetails(prd);
		}
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
		
		if(name.isEmpty() || price.isEmpty()|| desc.isEmpty()|| cat.isEmpty())
		
		{
			RequestDispatcher req = request.getRequestDispatcher("Admin-dash.jsp");
			req.include(request, response);
		}
		
//		else {
//			RequestDispatcher req = request.getRequestDispatcher("Admin-dash.jsp");
//			req.forward(request, response);
			
//			out.print("error");
//		}
		
	}

}

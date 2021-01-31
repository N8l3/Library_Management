package com.newbook.ecom.servlets.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newbook.ecom.servlets.register.RegistrationDeo;
import com.newbook.ecom.servlets.register.User;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private RegistrationDeo jc;
	
	public void init() {
		jc = new RegistrationDeo();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		User u = new User();
		
		u.setName(name);
		u.setMobile(mobile);
		u.setAddress(address);
		u.setEmail(email);
		u.setPass(password);
		
		try {
			jc.register(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(name.isEmpty() || mobile.isEmpty() || address.isEmpty() || email.isEmpty() || password.isEmpty()) {
			RequestDispatcher req = request.getRequestDispatcher("SignUp.jsp");
			req.include(request, response);
		}
		else {
			RequestDispatcher req = request.getRequestDispatcher("home.jsp");
			req.forward(request, response);
		}
	}

}

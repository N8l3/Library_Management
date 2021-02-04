package com.newbook.ecom.servelets.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		LoginDeo u_log = new LoginDeo();
		
		try {
			L_User user = u_log.checkLogin(email, password);
			String directPage = "login.jsp";
			
			if(user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				directPage = "home.jsp";
			}
			else {
				String message = "Invalid email/password";
				request.setAttribute("message", message);
            }
            
			RequestDispatcher dispatcher = request.getRequestDispatcher(directPage);
			dispatcher.forward(request, response);
             
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}

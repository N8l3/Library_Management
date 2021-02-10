<%@page import="com.newbook.ecom.product.ProductDao"%>
<jsp:useBean id="p" class="com.newbook.ecom.product.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%@ page import="com.newbook.ecom.product.ProductDao" %>

<%
	ProductDao.delete(p);
	response.sendRedirect("Admin-dash.jsp");
	out.print("<h1 style=\"color:white;\">The Product id :"+p.getId()+"is deleted Form the database.</h1>");
%>


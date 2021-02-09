<%@page import="com.newbook.ecom.product.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@ page import="com.newbook.ecom.product.ProductDao" %>

<%
	Product p = new Product();
	ProductDao.delete(p);
	response.sendRedirect("viewproduct.jsp");
%>

</body>
</html>
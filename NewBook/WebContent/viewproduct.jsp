<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="com.newbook.ecom.product.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="Reuse/CommonLink.html"></jsp:include>
    <title>My-Book</title>
</head>
<body>
<%-- <div>
<jsp:include page="header.jsp"></jsp:include>
</div> --%>
<%@ page import="com.newbook.ecom.product.ProductDao"%>
<%@page import="com.newbook.ecom.product.*,java.util.*" %>
<%@page import="com.newbook.ecom.servlets.register.Db_connect" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 
<%	
List<Product> list = ProductDao.getAllRecords();
request.setAttribute("list",list);

%>
<table border="1" width="90%">
<tr><th>Name</th><th>Desc</th><th>Author</th><th>Categories</th><th>Price</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="p">
	<tr><td>${p.getName()}</td><td>${p.getDesc()}</td><td>${p.getAuthor()}</td><td>${p.getCat()}</td><td>${p.getPrice()}</td><td><a href="editProduct.jsp?name=${p.getName()}">Edit</a></td><td><a href="deleteproduct.jsp?name=${p.getName()}">Delete</a></td></tr>
</c:forEach>
</table>
<!-- <br/><a href="#">Add Product</a>
 -->


<%-- <div id="mybookfooter">
<jsp:include page="footer.jsp"></jsp:include>
</div> --%>
</body>
</html>
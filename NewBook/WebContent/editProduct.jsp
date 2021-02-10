<!DOCTYPE html>
<%@page import="com.newbook.ecom.product.Product"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.newbook.ecom.product.ProductDao"%>
<%@ page import="com.newbook.ecom.product.Product" %>

<%
String id=request.getParameter("id");
Product p = ProductDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit  Product Form</h1>
<form action="edit.jsp" method="post">
<input type="hidden" name="name" value="<%=p.getId() %>"/>
<table>
<tr><td>Name:</td><td><input type="text" name="name" value="<%= p.getName()%>"/></td></tr>
<tr><td>Desc:</td><td><input type="Text" name="desc" value="<%= p.getDesc()%>"/></td></tr>
<tr><td>Author:</td><td><input type="text" name="author" value="<%= p.getAuthor()%>"/></td></tr>
<tr><td>Category:</td><td><input type="text" name="cat" value="<%= p.getCat()%>"/></td></tr>
<tr><td>Price:</td><td><input type="text" name="price" value="<%= p.getPrice() %>>"></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Product"/></td></tr>
</table>
</form>

</body>
</html>
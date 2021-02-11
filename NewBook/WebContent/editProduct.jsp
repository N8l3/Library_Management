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
out.print("product: "+id);
%>
<h1>Edit  Product Form</h1>
<form action="edit.jsp" method="get">
<input type="hidden" name="id" value="<%=p.getId()%>"/>
<table>
<%-- <tr><td>Id:</td><td><input type="text" name="name" value="<%=p.getId() %>"/></td></tr> --%>
<tr><td>Name:</td><td><input type="text" name="name" value="<%=p.getName()%>"/></td></tr>
<tr><td>Des:</td><td> <input type="text"  name="des" value="<%=p.getDes()%>"></td></tr>
<tr><td>Author:</td><td><input type="text" name="author" value="<%=p.getAuthor()%>"/></td></tr>
<tr><td>Category:</td><td><input type="text" name="cat" value="<%=p.getCat()%>"/></td></tr>
<tr><td>Price:</td><td><input type="text" name="price" value="<%=p.getPrice() %>"></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Product"/></td></tr>
</table>
</form>

</body>
</html>
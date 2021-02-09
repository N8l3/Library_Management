<%@page import="com.newbook.ecom.product.ProductDao"%>
<jsp:useBean id="p" class="com.newbook.ecom.product.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
int i=ProductDao.update(p);
response.sendRedirect("viewproduct.jsp");
%>
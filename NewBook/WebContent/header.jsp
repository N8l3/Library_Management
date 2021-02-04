<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Book Store</title>
	<jsp:include page="Reuse/CommonLink.html"></jsp:include>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd;">
     <div class="container-fluid">
  <a class="navbar-brand" href="#"><img src ="img/books.png" alt="" width="50" height="60"><b>Books Store</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="bs1.html">Best Selling</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Best Author</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="bs2.html">Stephe king</a>
          <a class="dropdown-item" href="bs3.html">Sudhamurty</a>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="contact.html">Contact</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="login.html">Login&Register</a>
      </li>
    </ul>
    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    </div>
</nav>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="Reuse/CommonLink.html"></jsp:include>
    <title>My-Book</title>
</head>
<body>
<div id="header">
<jsp:include page="header.jsp"></jsp:include>
</div>
    <div class="reg-sec">
      <h1>Sign-Up</h1>
      <form class="lform" action="process.jsp" method="post">
        <div class="form-group">
          <label for="name">Full Name:</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Enter full name">
        </div><div class="form-group">
          <label for="Mobile">Phone Number:</label>
          <input type="phone" name="mobile" id="Mobile" class="form-control" placeholder="Enter Phone Number">
        </div>
        <div class="form-group">
          <label for="my-textarea">Address:</label>
          <textarea id="my-textarea" class="form-control" name="address" rows="3"></textarea>
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" placeholder="Enter email" name="remail">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="rpass">
        </div><br>
        <input type="reset" value="Clear" class="btn btn-reset">
        <button type="submit"   name="register" class=" btn btn-sucess">Submit</button>
      </form>
    </div>
    <div id="mybookfooter">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>
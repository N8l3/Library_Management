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

<div class="login-sec">
      <h1>login</h1>
        <form class="lform" action="login.jsp" method="post">
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" name="remember"> Remember me</label>
            </div>
            <input type="reset" value="Clear" class="btn btn-reset">
            <button type="submit"  class=" btn btn-sucess">Submit</button>
          </form>
          
    </div>


    <div id="mybookfooter">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>
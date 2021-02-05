<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="Reuse/CommonLink.html"></jsp:include>
    <link rel="stylesheet" href="CSS/SignUp_style.css">
</head>
<body>
<div id="header">
	<jsp:include page="header.jsp"></jsp:include>
</div>
<div class="container">
		<div class="myCard">
			<div class="row">
				<div class="col-md-6">
					<div class="myPic">
						<img src="img/login.png" height="500">	
					</div>
				</div>
				<div class="col-md-6">
					<div class="myLeftCtn">
						<form class="myForm text-center" action="Login" method="post">
						<h1>Login</h1>
					
						<div class="form-group">
							<i class="fas fa-envelope"></i>
							<input class="myInput" placeholder="Email" type="text" id="email" name="email" required>
						</div>
						
						<div class="form-group">
							<i class="fas fa-lock"></i>
							<input class="myInput" placeholder="Password" type="password" id="password" name="pass" required>
						</div>
						
						<div class="row pt-3">
							<button type="submit" class="btn btn-primary" >Login</button>
						</div>
						
						<div class="row pt-3">
							<p>Don't have a account?</p>
						</div>
						
						<div class="row pt-2">
							<a class="btn btn-primary" href="SignUp.jsp" role="button">Sign-Up</a>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<div id="mybookfooter">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
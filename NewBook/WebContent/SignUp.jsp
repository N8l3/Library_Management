<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Book Store</title>
	<meta name="viewport" content="width=device-width, initial-scale-1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
	<link rel="stylesheet" href="CSS/SignUp_style.css">
	
</head>
<body>
<!--header  -->
<div class="header">
<jsp:include page="header.jsp"></jsp:include>
</div>

<!--body -->
	<div class="container">
		<div class="myCard">
			<div class="row">
				<div class="col-md-6">
					<div class="myPic">
						<img src="img/SignUp.jpg" height="500">	
					</div>
				</div>
				<div class="col-md-6">
					<div class="myLeftCtn">
						<form class="myForm text-center" action="Registration" method="post">
						<h3>Create new account</h3>
						
						<div class="form-group">
							<i class="fas fa-user"></i>
							<input class="myInput" type="text" placeholder="Full name" id="username" name="name" required>
							<div class="invalid-feedback">Please fill out this field.</div>
						</div>
						
						<div class="form-group">
							<i class="fas fa-mobile"></i>
							<input class="myInput" type="tel" placeholder="Mobile number" id="mobile" name="mobile" required>
						</div>
						
						<div class="form-group">
							<i class="fas fa-home"></i>
							<input class="myInput" type="text" placeholder="Address" id="address" name="address" required>
						</div>
						
						<div class="form-group">
							<i class="fas fa-envelope"></i>
							<input class="myInput" placeholder="Email" type="text" id="email" name="email" required>
						</div>
						
						<div class="form-group">
							<i class="fas fa-lock"></i>
							<input class="myInput" placeholder="Password" type="password" id="password" name="pass" required>
							<!-- pattern="(?=.*\d)(?=.*[a-z])(?=.[A-Z]).{8,}"  -->
							<div class="invalid-feedback">Password must contain atleast 1 small alphabet, 1 capitol alphabet, 1 +ve integer with password length more than 8 </div>
						</div>
						
						<div class="form-group">
							<label><input id="check_1" name="check_1" type="checkbox" required>
								<small> I read and agree to Term and conditions</small>
								<div class="invalid-feedback">You must check the box.</div>
							</label>
						</div>
						<input type="submit" class="sub" value="CREATE ACCOUNT">
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- Footer -->
	<div class="footer">
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
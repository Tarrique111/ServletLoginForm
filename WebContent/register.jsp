<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="styles/register.css">


<script src="registerValidation/validation.js">
	
</script>
</head>
<body>
	<h1 align="center">Creater An Account</h1>
	<p id="head"></p>
	<div class="container">
		<div class="row">
			<div class="form_bg col-lg-4 col-md-6 col-sm-8 col-xs-12">
				<form action="registerController" name="myForm" id="myForm"
					method="post">
					<div class="form-group">
						<label>Full Name</label> <input type="text" class="form-control"
							id="Name" name="name" placeholder="Name" required> <span
							style="color: red;" id="error1"></span>
					</div>

					<div class="form-group">
						<label>Email</label> <input type="text" class="form-control"
							id="mail" name="mail" placeholder="Email" required> <span
							id="error2" style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" id="pass" name="pass" placeholder="Password"
							required> <span id="error3" style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Confirm Password</label> <input type="password"
							class="form-control" id="cPass" name="cPass"
							placeholder="Confirm Password" required> <span
							id="error4" style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Mobile Number</label> <input type="text"
							class="form-control" id="mn" name="mn"
							placeholder="Mobile Number" maxlength = 10 minlength = 10 required> <span id="error5"
							style="color: red;"></span>
					</div>


					<br />
					<div class="align-center">
						<button type="submit" class="btn btn-success" id="submit">Register
						</button>

						<a href="signin.jsp" class="btn btn-primary">Cancel</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
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

<script>
$(document)
.ready(
		function() {
			$('#Name')
					.blur(
							function(e) {
								var node = $('#Name').val();
								var regex = /^[a-zA-Z ]{4,30}$/;
								var validate = true;
								if (!(node.match(regex))) {
									$('#error1')
											.text(
													"Enter valid name and length should grater than 0");
									  e.preventDefault();
									validate = false;
								} else {
									$('#error1').hide();
									  e.preventDefault();
									validate = true;
								}
								return validate;
							});

			$('#mn')
					.blur(
							function(e) {
								var mobileNum = $("#mn").val();
								var regx = /^[0-9]{10}$/;
								var valid = true;
								if (!mobileNum.match(regx)) {
									$('#error5')
											.text(
													"Enter Mobile Number and length should be 10");
									  e.preventDefault();
									valid = false;
								} else {
									$('#error5').hide();
									  e.preventDefault();
									valid = true;
								}
								return valid;
							});

			$('#pass')
					.blur(
							function(e) {
								var password = $('#pass').val();
								var valid = true;
								if (password.length<8 || password.length>16) {
									$('#error3')
											.text(
													"password Length should be between 8 to 16 charcter")
													  e.preventDefault();
								} else {
									$('#error3').hide();
									  e.preventDefault();
									valid = true;
								}
								return valid;
							});

			$('#cPass').blur(function(e) {
				var confirmPassword = $('#cPass').val();
				var password = $('#pass').val();
				var valid = true;
				if (confirmPassword != password) {
					$('#error4').text("password Not matched")
					  e.preventDefault();
				} else {
					$('#error4').text("password matched")
					$('#error4').hide();
					valid = true;
				}
				return valid;
			});
		});
</script>

<style>
.form_bg {
	background-color: #eee;
	color: #666;
	padding: 20px;
	border-radius: 10px;
	position: absolute;
	border: 1px solid black;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 380px;
}

input[type='text'] {
	border-top: 0px;
	border-left: 0px;
	border-right: 0px;
}

.align-center {
	text-align: center;
}
</style>
</head>
<body>
	<h1 align="center">Creater Usre</h1>
	<p id="head"></p>
	<div classx="container">
		<div class="row">
			<div class="form_bg col-lg-4 col-md-6 col-sm-8 col-xs-12">
				<form name="myForm" id="myForm">
					<div class="form-group">
						<input type="text" class="form-control" id="Name"
							placeholder="Name"> <span style="color: red;" id="error1"></span>
					</div>

					<div class="form-group">
						<input type="email" class="form-control" id="mail"
							placeholder="Email"> <span id="error2"
							style="color: red;"></span>
					</div>

					<div class="form-group">
						<input type="password" class="form-control" id="pass"
							placeholder="Password"> <span id="error3"
							style="color: red;"></span>
					</div>

					<div class="form-group">
						<input type="password" class="form-control" id="cPass"
							placeholder="Confirm Password"> <span id="error4"
							style="color: red;"></span>
					</div>

					<div class="form-group">
						<input type="text" class="form-control" id="mn"
							placeholder="Mobile Number"> <span id="error5"
							style="color: red;"></span>
					</div>


					<br />
					<div class="align-center">
						<button type="submit" class="btn btn-primary" id="submit">Create
							User</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
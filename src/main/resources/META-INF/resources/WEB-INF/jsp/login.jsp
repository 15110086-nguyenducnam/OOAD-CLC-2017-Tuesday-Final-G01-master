<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style type="text/css">
body {
	padding-top: 0px;
}

.form-control {
	margin-bottom: 10px;
}

.login-screen-bg {
	background-color: #EFEFEF;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align:center">Hello to ISSE2017</h1>
	<form action="login" method="POST">
		<div class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
					<legend>
						<a href="http://hocwebgiare.com/"><i
							class="glyphicon glyphicon-globe"></i></a> Login!
					</legend>
					<form action="http://hocwebgiare.com" method="post" class="form"
						role="form">

						<input class="form-control" name="username" placeholder="Username"
							type="text"> <input class="form-control" name="password"
							placeholder="Password" type="password"> <input
							type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<div class="row"></div>

						<button class="btn btn-lg btn-primary btn-block col-md-6" style="margin-bottom:20px"
							type="submit">Signup</button>
				
						<a href="/new-user"><button
								class="btn btn-lg btn-primary btn-block col-md-6" type="button">
								Registration</button></a>

					</form>
				</div>
			</div>
		</div>
	</form>
	</form>
</body>
</html>
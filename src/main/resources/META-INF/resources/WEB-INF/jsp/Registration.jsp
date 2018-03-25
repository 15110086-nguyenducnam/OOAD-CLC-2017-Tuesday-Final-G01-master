<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Registration</title>
</head>
<body>
	<form:form method="POST" modelAttribute="user" class="form-horizontal">
		<div class="container">
			<h1 class="text-center">Registration</h1>
			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
					<legend>
						<a href="http://hocwebgiare.com/"><i
							class="glyphicon glyphicon-globe"></i></a> Register!
					</legend>
					<form:input type="hidden" path="id" id="id" />

					<form:input class="form-control" path="username" id="username"
						placeholder="Username" type="text" />

					<form:input class="form-control" path="password"
						placeholder="Password" type="password" id="password" />


					<button class="btn btn-lg btn-primary btn-block" type="submit">
						Signup</button>

				</div>
			</div>
		</div>
	</form:form>

	<%-- <form:form method="POST" modelAttribute="user"
		class="form-horizontal">
			<form:input type="hidden" path="page_id" id="id"/>
		<label class="col-md-3 control-lable" for="description">Description</label>
		<form:input type="text" path="description" id="description"
			class="form-control input-sm" />
</br>
		<label class="col-md-3 control-lable" for="content">Content</label>
		</br>
			
		<form:textarea path="content" id="txtnoidung"/>

		<input type="submit" value="Submit" class="btn btn-primary btn-sm" /> or <a
			href="<c:url value='/' />">Cancel</a>
	</form:form> --%>
</body>
</html>
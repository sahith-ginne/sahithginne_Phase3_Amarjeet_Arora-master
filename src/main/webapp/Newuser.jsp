<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="title">
		<h2 style="text-align:center;">User Signup Page</h2>
	</div>
	<div id="adminbg" >
	<form id="loginform" action="signup" method="post"  autocomplete="off" >
		<label class="form-label">Name</label>
		<input type="text" class="form-control" name="name" required><br>
		<label class="form-label">Email</label>
		<input type="text" class="form-control" name="mail" required><br>
		<label class="form-label">Phone no</label>
		<input type="text" class="form-control" name="phoneno" required><br>
		<label class="form-label">Set User id</label>
		<input type="text" class="form-control" name="userid" required><br>
		<label class="form-label">Set Password</label>
		<input type="text" class="form-control" name="password" required><br>
		<input type="submit" onclick="alert('Your details saved Successfully!')" class="btn btn-dark" id="loginbutton" value="Create Login">
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	

</body>
</html>
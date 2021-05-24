<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="title">
		<h2 style="text-align:center;">Admin Login</h2>
	</div>
	<div id="adminbg" >
	<form id="loginform" action="http://localhost:8080/Sportyshoes/Adminhome.jsp" method="post"  autocomplete="off" >
		<label class="form-label">Admin Id</label>
		<input type="text" class="form-control" name="adminid" required><br>
		<label class="form-label">Password</label>
		<input type="password" class="form-control" name="adminpassword" required><br>
		<input type="submit" class="btn btn-primary" id="loginbutton" value="Admin Login">
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	
</body>
</html>
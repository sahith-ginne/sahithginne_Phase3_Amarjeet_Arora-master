<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Purchase</h1>
	<div id="boxcontent">
		<form method="post" action="purchase">
				<label class="form-label">Card Number</label>
				<input class="form-control" type="text" name="cardnumber" autocomplete="off">
				<label class="form-label">CVV</label>
				<input class="form-control" type="text" name="cvv" autocomplete="off">
				<label class="form-label">User Name</label>
				<input class="form-control" type="text" name="username" autocomplete="off">
				<label class="form-label">Address</label>
				<input class="form-control" type="text" name="address" autocomplete="off">
				<input type="submit"  class="btn btn-primary" value="Conform Payment">
		</form>
	</div>
</body>
</html>
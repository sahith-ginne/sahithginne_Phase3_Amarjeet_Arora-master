<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<div>Admin Home</div>
		<div id="adminlogout">
			<a href="Admin.jsp">Logout</a>
		</div>
	</div>
	<div id="body">
		<div class="row">
			<div class="col-md-4" id="col1">
				<a href="ProductPage.jsp" style="text-decoration: none;"><div
						class="box" id="img1">Manage the products</div></a>
			</div>
			<div class="col-md-4" id="col2">
				<a href="BrowseUser.jsp" style="text-decoration: none;"><div
						class="box" id="img2">Browse the users</div></a>
			</div>
			<div class="col-md-4" id="col3">
				<a href="ParchaseReport.jsp" style="text-decoration: none;"><div
						class="box" id="img3">See the Parchase Report</div></a>
			</div>
		</div>
	</div>
</body>
</html>
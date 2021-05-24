<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<div id="s1" class="section">
			<div id="navbar">
				<div id="logo">SportyShoes</div>
				<div id="options">
					<ul>

						<li><a href="Login.jsp">Login</a></li>
						<li><a href="Admin.jsp">Admin</a></li>
					</ul>
				</div>
			</div>
		
			<%
			int num = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from products");
			while (rs.next()) {
			%>

			<a href="Customerpage.jsp?msg=<%=rs.getString("Id")%>"
				style="padding: 0px; text-decoration: none;"><div id="shoebox"
					class="row">
					
						
					
					<div id="shoecontent" class="col-md-8">
						<div>
							<h2><%=rs.getString("Company")%></h2>
							<h3><%=rs.getString("Category")%></h3>
							<p>
								Price: Rs.<%=rs.getString("Price")%></p>
							<h4 style="color: red;">Free Delivery Available!</h4>
						</div>
					</div>
				</div></a>
			<%
			}
			%>
		</div>
		<div id="s4" class="section"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>

</body>
</html>
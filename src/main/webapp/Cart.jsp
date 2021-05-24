<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div>
		<h1>Items Added</h1>
		
				<div id="container">
			<table>
			 <%
			 HttpSession user=request.getSession();
				String name=(String)user.getAttribute("Brand");
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
			
					
			   	Statement st1=con1.createStatement();
				ResultSet rs1=st1.executeQuery("select * from cart where Brand='"+name+"'");
				while(rs1.next())
				{
				%>
				<a href="customerloginpage.jsp?msg=<%=rs1.getString("Itemid") %>" >
				<div id="box">
						<h5>Brand: <%=rs1.getString("Company") %> (Item Id:<%=rs1.getString("Itemid") %>)</h5>
						<p>Category: <%=rs1.getString("Category") %></p>
						<h4>Price: RS.<%=rs1.getString("Price") %></h4>							
				</div>
				</a>
					<%}
%>
			</table>
			</div>
	</div>
</body>
</html>
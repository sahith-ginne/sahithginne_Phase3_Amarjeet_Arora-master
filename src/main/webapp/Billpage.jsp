<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Purchase Report</h1>
	<div>
		<form action="minisearch" method="post">
			<div class="row">
  				<div class="col-md-10">
    				<input type="search" name="search" class="form-control" autocomplete="off"/>
  				</div>
  				<div class="col-md-2">
  					<input type="submit" value="Search" class="btn btn-primary">
  				</div>
			</div>
		</form>
	</div>
	<a href="Adminhome.jsp" class="btn btn-primary">Back</a>
<div id="tablebox">
	<table  class="table table-dark table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Brand</th>
				<th>Category</th>
				<th>Price</th>
				<th>User Name</th>
				<th>Address</th>
				<th>Ordered Date</th>
			</tr>
		</thead>
		<tbody>
		<%
		HttpSession session1=request.getSession();
		String search=(String)session1.getAttribute("search");
		System.out.println(search);
		
		Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
	
	Statement st=con.createStatement();
	ResultSet rs;
	if(search==null || search==""){
		 rs=st.executeQuery("select * from billpage"); 	
	}else{
		 rs=st.executeQuery("select * from billpage where Company='"+search+"' or Category='"+search+"' or Price='"+search+"' or Username='"+search+"' or Ordereddate='"+search+"'");                                                                                     
	}
	
		while(rs.next())
		{
		%>
				<tr>
					<td><%=rs.getString("Id") %></td>
					<td><%=rs.getString("Company") %></td>
					<td><%=rs.getString("Category") %></td>
					<td><%=rs.getString("Price") %></td>
					<td><%=rs.getString("Username") %></td>
					<td><%=rs.getString("Address") %></td>
					<td><%=rs.getString("Ordereddate") %></td>
				</tr>
		<%	
		}
	%>
	
			
		</tbody>
	</table>
</div>
</body>
</html>
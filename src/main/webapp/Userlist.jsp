<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		<div>User List</div>
		<div id="back"><a href="Adminhome.jsp">Back</a></div>
	</div>
	<div>
		<form action="minisearch2" method="post">
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
	
	<div id="tablebox">
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Mail</th>
					<th>Phoneno</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				  <%
				  HttpSession session2=request.getSession();
				  String name=(String)session2.getAttribute("search");
				  System.out.println(name);
    Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
  
	
    Statement st=con.createStatement();
    ResultSet rs;
    if(name==null || name=="")
    {
    rs=st.executeQuery("select * from newusers");
    }else{
    	rs=st.executeQuery("select * from newusers where Name='"+name+"'");
    }
    while(rs.next())
    {
    %>
				<tr>
					<td><%=rs.getString("Id") %></td>
					<td><%=rs.getString("Name") %></td>
					<td><%=rs.getString("Mail") %></td>
					<td><%=rs.getString("Phoneno") %></td>
					<td><%=rs.getString("Password") %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>
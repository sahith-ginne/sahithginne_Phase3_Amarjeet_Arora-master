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

<div class="row">
	<div id="box1" class="col-lg-4">
		<a id="logout" href="Adminhome.jsp">Back</a>
		<a href="Productspage.jsp">Product List</a>
		<a href="Addproducts.jsp">Add Product</a>
		<a href="Delete.jsp">Delete Product</a>
		<a href="Updateproducts.jsp">Update Product</a>
		
	</div>
	<div id="box2" class="col-lg-8">
		<h1>Product list</h1>
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Company</th>
					<th>Category</th>
					<th>Price</th>
					<th>Features</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
			   <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
    
	
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from products");
    while(rs.next())
    {
    %>
    			<form action="delete?msg=<%=rs.getString("Id") %>" method="post">
				<tr>
					<td id="id"><%=rs.getString("Id") %></td>
					<td><%=rs.getString("Company") %></td>
					<td><%=rs.getString("Category") %></td>
					<td><%=rs.getString("Price") %></td>
					<td><%=rs.getString("Features") %></td>
					<td><input type="submit" class="btn btn-danger" value="Delete"></td>
				</tr>
				</form>
				<%
				
		
    } %>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>
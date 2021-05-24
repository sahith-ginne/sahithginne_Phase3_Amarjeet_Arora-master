<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
    
  <%
   
    String Id=request.getParameter("msg");
  HttpSession indi=request.getSession();
  indi.setAttribute("company", Id);
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
    
	
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from products where company='"+Id+"'");
    while(rs.next())
    {%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<a id="back" href="Homepage.jsp" class="btn btn-primary">Back</a>
	<div class="row">
		<div class="col-md-6">
			
		</div>
		<div class="col-md-6">
			<div>
				<h2><%=rs.getString("Company") %></h2>
				<h3><%=rs.getString("Category") %></h3>
				<p>Price: Rs.<%=rs.getString("Price") %></p>
				<h4 style="color:red;">Free Delivery Available!</h4>
				<p>Features:<br>
				<%=rs.getString("Features") %>
				</p>
			</div>
			<div>
				<a href="Nonpurchaseusers.jsp" class="btn btn-primary" id="buy">Buy</a>
				<form action="cart" method="post">
				<a href="#" type="submit" onclick="fun()" class="btn btn-warning" id="addcart">Add to Kart</a>
				</form>
			</div>
		</div>
	</div>
	 <% }
    %>
    <script>
    	function fun()
    	{
    		alert('You need to login first for add your cart!');
    	}
    </script>
</body>
</html>
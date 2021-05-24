<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<h1>Delivery</h1>
	<br>
	<p id="thank">Thank you for Purchase!</p>
	<div class="col-md-6">
	<h2>Product Detail:</h2>
	<%
		Date date=new Date();
		
		DateFormat dateFormat = new SimpleDateFormat("dd-mm-yyyy");  
		String strDate = dateFormat.format(date);  
    	HttpSession indi=request.getSession();
   		String id=(String)indi.getAttribute("Id");
   		String username=(String)indi.getAttribute("name");
   		String address=(String)indi.getAttribute("address");
   		String company=null;
		String category=null;
		String price=null;
   	
   				
   		Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
  	
   		Statement st=con.createStatement();
   		ResultSet rs=st.executeQuery("select * from products where Id='"+id+"'");
   		while(rs.next())
   		{
   			 company=rs.getString("Company");
   			 category=rs.getString("Category");
   			 price=rs.getString("Price");
   		%>
	<div>
				<h3><%=rs.getString("Company") %></h3>
				<h2><%=rs.getString("Category") %></h2>
				<p>Price: Rs.<%=rs.getString("Price") %></p>
				<h4 style="color:red;">Free Delivery Available!</h4>
				<p>Features:<br>
				<%=rs.getString("Features") %>
				</p>
				<h4>Ordered Date:<%=date %></h4>
				<h4>Delivery Date: Within 7 Days from ordered date</h4>
	</div>
	<% 
		indi.setAttribute("company", rs.getString("Company"));
		indi.setAttribute("category", rs.getString("Category"));
		indi.setAttribute("price", rs.getString("Price"));
   		}
    %>
    <%
    	Class.forName("com.mysql.jdbc.Driver");
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/Sportyshoes","root","sahith");
	  
	
		PreparedStatement ps=con1.prepareStatement("insert into billpage(Company,Category,Price,name,Address,Ordereddate)values(?,?,?,?,?,?)");
    	ps.setString(1, company);
    	ps.setString(2, category);
    	ps.setString(3, price);
    	ps.setString(4, username);
    	ps.setString(5, address);
    	ps.setString(6, strDate);
    	
    	ps.executeUpdate();
    %>
    </div>
    <div class="col-md-6">
    	<h2>Card Details:</h2>
    	<h3>Card Holder Name: <%=username %></h3>
    	<p>Address:<br><%=address %></p>
    </div>
    <div style="margin:0px 40px;"><a href="Homepage.jsp" class="btn btn-primary">Continue Shoping</a></div>
    </div>
</body>
</html>
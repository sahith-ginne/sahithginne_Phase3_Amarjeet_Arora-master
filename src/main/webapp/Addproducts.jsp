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
	<div id="box1">
		<a id="logout" href="Adminhome.jsp">Back</a><br>
		<a href="Productspage.jsp">Product List</a><br>
		<a href="Addproducts.jsp">Add Product</a><br>
		<a href="Delete.jsp">Delete Product</a><br>
		<a href="Updateproducts.jsp">Update Product</a><br>
	</div>
	<div id="box2" >
		<div>
			<form method="post" action="Productspage">
	  <label for="uname"><b>Brand name</b></label>
      <input type="text" name="uname" required><br><br>
      
      <label for="Category"><b>Category</b></label>
      <input type="text" placeholder="" name="" required><br><br>
 
      <label for="price"><b>Price</b></label>
      <input type="text"  name="price" required><br><br>
      
      <label for="features"><b>Features</b></label>
      <input type="text" name="features" required><br><br>
      
     
      <input type="submit" placeholder="Submit">
      
      
				
			</form>
		</div>
	</div>
</div>
</body>
</html>
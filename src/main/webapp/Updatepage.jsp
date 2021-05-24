<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

  <% 
    String id=request.getParameter("msg");
	  HttpSession s1=request.getSession();
	  s1.setAttribute("Id", id);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="row">
	<div id="box1"  class="col-lg-4">
		<a id="logout" href="Adminhome.jsp">Back</a>
		<a href="ProductPage.jsp">Product List</a>
		<a href="AddProduct.jsp">Add Product</a>
		<a href="DeleteProduct.jsp">Delete Product</a>
		<a href="UpdateProduct.jsp">Update Product</a>
		
	</div>
	<div id="box2" class="col-lg-8">
		<form method="post" action="productspage">
				<label class="form-label">Company Name</label>
				<input class="form-control" type="text" name="companyname" autocomplete="off">
				<label class="form-label">Category</label>
				<input class="form-control" type="text" name="category" autocomplete="off">
				<label class="form-label">Price</label>
				<input class="form-control" type="text" name="price" autocomplete="off">
				<label class="form-label">Features</label>
				<input class="form-control" type="text" name="features" autocomplete="off">
				<input type="submit" Style="margin:10px 0px;" class="btn btn-danger">
			</form>
	</div>
	</div>
	
</body>
</html>
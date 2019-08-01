<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Coffee Shop</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css" rel="stylesheet" integrity="sha384-WTtvlZJeRyCiKUtbQ88X1x9uHmKi0eHCbQ8irbzqSLkE0DpAZuixT5yFvgX0CjIu" crossorigin="anonymous">
<link rel= "stylesheet" href="/style.css"/> 
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Wildly Exciting Coffee Admin Page</h1>	
		<p></p>
			
		<table class="table">
			<thead class="text-primary">
				<tr>
					<th>Products</th><th>Description</th><th>Price</th><th>Edit</th><th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td><a class="btn btn-secondary" href="/edit-product?id=${ product.id } ">Edit</a></td>
					<td><a class="btn btn-danger" href="/delete?id=${ product.id }">Delete</a></td>					
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/add" class="btn btn-info">Add</a>
		<a class="btn btn-primary" href="/products">Home</a>
	</div>
</body>
</html>
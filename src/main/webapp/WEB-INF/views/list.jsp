<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Coffee Shop</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WTtvlZJeRyCiKUtbQ88X1x9uHmKi0eHCbQ8irbzqSLkE0DpAZuixT5yFvgX0CjIu"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Wildly Exciting Coffee</h1>
		<div align="right">
			<a href="/user-form" class="btn btn-info">Register</a> 
			<c:if test="${ empty preference.firstname }">
				<a href="/login" class="btn btn-danger">Login</a>
			</c:if>
			<c:if test="${not empty preference.firstname }">
				<a href="/logout" class="btn btn-danger">Logout</a>
				<p align="left">
				<span > Hello ${ preference.firstname } </span>
				</p>
			</c:if>
			<p></p>
		</div>
		<header>
		
		</header>
		<table class="table">
			<thead class="text-primary">
				<tr>
					<th>Products</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
					<tr>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>
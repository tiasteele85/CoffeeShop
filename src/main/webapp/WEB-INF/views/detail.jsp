<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rooms</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Rooms at Grand Circus</h1>
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td>${products.name}</td>
			</tr>
			<tr>
				<th scope="row">Max Capacity</th>
				<td>${products.description}</td>
			</tr>
			<tr>
				<th scope="row">Available</th>
				<td>${products.price}</td>
			</tr>
		</table>
		<a class="btn btn-secondary" href="/rooms/edit?id=${products.id}">Edit</a>
		<a class="btn btn-danger" href="/rooms/delete?id=${products.id}">Delete</a>
		<a class="btn link" href="/rooms">Back to List</a>
	</div>
</body>
</html>
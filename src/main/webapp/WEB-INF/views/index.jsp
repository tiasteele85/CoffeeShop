<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Rooms at Grand Circus</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Room</th><th>Max Capacity</th><th>Available</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="classroom" items="${products}">
				<tr>
					<td><a href="/rooms/detail?id=${classroom.id}">${classroom.name}</a></td>
					<td>${classroom.description}</td>
					<td>${classroom.price }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/rooms/add" class="btn btn-secondary">Add Room</a>
	</div>
</body>
</html>
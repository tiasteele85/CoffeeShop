<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WTtvlZJeRyCiKUtbQ88X1x9uHmKi0eHCbQ8irbzqSLkE0DpAZuixT5yFvgX0CjIu"
	crossorigin="anonymous">
	<link rel= "stylesheet" href="/style.css"/>
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Add</h1>
		<p></p>
		<form method="post">
			<input type="hidden" name="id" value="${product.id}" />
			<p>
				Product Name:<input type="Text" name="name" value="${product.name}">
			</p>
			<p>
				Description:<input type="Text" name="description" value="${product.description}">
			</p>
			<p>
				Price:<input type="number" name="price" min=1 step="0.01" value="${product.price}">
			</p>
			<button type="submit" class="btn btn-info">Submit</button>
			<button class="btn btn-secondary" href="/admin">Cancel</button>
		</form>
	</div>
</body>
</html>
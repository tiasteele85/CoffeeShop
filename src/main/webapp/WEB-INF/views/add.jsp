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
			<p>
				Product Name:<input type="Text" name="name">
			</p>
			<p>
				Description:<input type="Text" name="description"
					placeholder="40 characters">
			</p>
			<p>
				Price:<input type="number" name="price" min=1 step="0.01">
			</p>
			<button type="submit" class="btn btn-info">Submit</button>
			<a href="/admin" class="btn btn-secondary">Cancel</a>
		</form>
	</div>
</body>
</html>
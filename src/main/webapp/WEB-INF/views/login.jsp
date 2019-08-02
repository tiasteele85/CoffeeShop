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
		<h1 class="text-primary">Login</h1>
		<form method="post">
			<p>
				Username:<input type="text" name=username>
			</p>
			<p>
				Password:<input type="password" name=password>
			</p>			
			<button type="submit" class="btn btn-info">Submit</button>
			<a class="btn btn-secondary" href="/products">Cancel</a>
		</form>
	</div>
</body>
</html>
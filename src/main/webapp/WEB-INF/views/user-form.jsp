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
		<h1 class="text-primary">User Info</h1>
		<form action="/thank-you" method="post">
			<p>
				Username:<input type="Text" name=username>
			</p>
			<p>
				Password:<input type="password" name=password>
			</p>
			<p>
				First name:<input type="Text" name=firstname>
			</p>
			<p>
				Last name:<input type="Text" name=lastname>
			</p>
			<button type="submit" class="btn btn-info">Submit</button>
			<a class="btn btn-secondary" href="/products">Cancel</a>
		</form>
	</div>
</body>
</html>
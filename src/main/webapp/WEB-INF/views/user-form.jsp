<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User Info</h1>
	<form action="/thank-you" method="post">
		<p>Username:<input type="Text" name = username></p>
		<p>Password:<input type="password" name = password></p>
		<p>First name:<input type="Text" name = firstname></p>
		<p>Last name:<input type="Text" name = lastname></p>
		<button type="submit">Submit</button>
	</form>
</body>
</html>
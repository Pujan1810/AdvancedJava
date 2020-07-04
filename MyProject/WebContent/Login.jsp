<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		String emailError = (String)request.getAttribute("emailError");
		String passwordError = (String)request.getAttribute("passwordError");

%>

		<h3>Login</h3>
		<br>
		<form action="LoginController">
				Email: <input type="text" name="email"/>
				<%=emailError == null ?"": emailError%>
				<br>
				Password: <input type="text" name="password"/>
				<%=passwordError == null ? "" : passwordError%>
				<br>
				<input type="Submit" value="Submit"/>
		
		
		</form>
</body>
</html>
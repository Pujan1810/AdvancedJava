<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body action="SignupController">


	<% 
		
		String firstname= request.getParameter("firstname");
		String lastname= request.getParameter("lastname");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		String gender= request.getParameter("gender");
	
		
		String[] hobby= request.getParameterValues("hobby");
		String country = request.getParameter("country");
		String hobbies = Arrays.toString(hobby);
	
	%>
<h1>Welcome</h1>
Firstname:
<%=firstname %><br>
Lastname:
<%=lastname %><br>
Email:
<%=email %><br>
Password: 
<%=password %><br>
Gender:
<%=gender %>

<br>
Hobbies:
<%=hobbies %><br>

Country:
<%=country %>




</body>
</html>
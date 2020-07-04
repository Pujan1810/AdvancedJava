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
	
	String firstnameError = (String) request.getAttribute("firstnameError");
	String lastnameError = (String) request.getAttribute("lastnameError");
	String emailError = (String) request.getAttribute("emailError");
	String passwordError = (String) request.getAttribute("passwordError");
	String confirmpasswordError = (String) request.getAttribute("confirmpasswordError");
	String matchpasswordError = (String) request.getAttribute("matchpasswordError");
	String genderError = (String) request.getAttribute("genderError");
	String hobbyError = (String) request.getAttribute("hobbyError");
	
	%>




	<form action="SignupController">
		Firstname: <input type="text" name="firstname"/>
		<%=firstnameError == null ? "" : firstnameError %><br>
		
		Lastname: <input type="text" name="lastname"/>
		<%=lastnameError == null ? "" : lastnameError %><br>
		
		Email: <input type="text" name="email"/>
		<%=emailError == null ? "" : emailError %><br>
		
		Password: <input type="text" name="password"/>
		<%=passwordError == null ? "" : passwordError %><br>
		
		Confirm Password: <input type="text" name="confirmpassword"/>
		<%=confirmpasswordError == null ? "" : confirmpasswordError %>
		<%=matchpasswordError == null ? "" : matchpasswordError %><br>
		
		Gender: <input type="radio" name="gender"  value="Male"/>
				<label for="gender"> Male </label>
				<input type="radio" name="gender"  value="Female"/>
				<label for="gender"> Female </label>
		<%=genderError == null ? "" : genderError %><br>
		
		Hobbies: <input type="checkbox" name="hobby" value="Cricket">
			   <label for="hobby"> Cricket </label>
			   <input type="checkbox" name="hobby" value="Music">
			   <label for="hobby"> Music </label>
		       <input type="checkbox" name="hobby" value="Reading">
			   <label for="hobby"> Reading  </label>
			   <%=hobbyError == null ? "" : hobbyError %><br>
			   
		Country: <select name="country" id="country">
  				 <option value="India">India</option>
  				<option value="USA">USA</option>
 				 <option value="Asutralia">Australia</option>
  				<option value="Japan">Japan</option>
				</select><br>
				
		<input type="Submit" value="Submit"/>
		
		
		
		
		
	</form>
</body>
</html>
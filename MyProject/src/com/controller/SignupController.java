package com.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SignupController")

public class SignupController extends HttpServlet {

		
		@Override
		
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String confirmpassword = request.getParameter("confirmpassword");
			String gender = request.getParameter("gender");
			
			String[] hobby = request.getParameterValues("hobby");			
			String country = request.getParameter("country");
			
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		         
		    int flag=0;
			
			if(firstname == null || firstname.trim().length()==0)
			{
				flag=1;
				request.setAttribute("firstnameError","<font color='red'>Please Enter Firstname</font>");
				
			}
			if(lastname == null || lastname.trim().length()==0)
			{
				flag=1;
				request.setAttribute("lastnameError","<font color='red'>Please Enter Lastname</font>");
				
			}
			if(email == null || email.trim().length()==0)
			{
				flag=1;
				request.setAttribute("emailError","<font color='red'>Please Enter Email</font>");
				
			}
			if(password == null || password.trim().length()==0)
			{
				flag=1;
				request.setAttribute("passwordError","<font color='red'>Please Enter Password</font>");
				
			}
			if(confirmpassword == null || confirmpassword.trim().length()==0)
			{
				flag=1;
				request.setAttribute("confirmpasswordError","<font color='red'>Please Confirm Password</font>");
				
			}
			else if(!password.contentEquals(confirmpassword))
			{
				flag=1;
				request.setAttribute("matchpasswordError","<font color='red'>Entered password and confirm password does not match</font>");
			}
			if(gender == null)
			{
				flag=1;
				request.setAttribute("genderError","<font color='red'>Please select the gender</font>");
				
			
			}
			
			if(hobby == null)
			{
				flag=1;
				request.setAttribute("hobbyError","<font color='red'>Please select at least one hobby</font>");
				
			
			}
			
			if (flag==1)
			{
				RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
				rd.forward(request, response);
			}

			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);

			}
		}
		
		
}

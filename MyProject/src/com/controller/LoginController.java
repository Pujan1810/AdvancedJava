package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController")

public class LoginController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		int flag=0;
		
		
		if (email == null || email.trim().length()==0)
		{
			flag=1;
			request.setAttribute("emailError", "<font color='red'>Please Enter Email ID</font>");
		
		}
		if (password == null || password.trim().length()==0)
		{
			flag=1;
			request.setAttribute("passwordError", "<font color='red'>Please Enter Password</font>");
		}
		
		
		if(flag==1) 
		{
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
			rd.forward(request, response);
		}
	}
}

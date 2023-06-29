<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@page import="userModel.userDao" %>
    <%@page import="userModel.userP" %>         
<html>  
<head>
     
   </head>
   <body> 
    <%
    String name   = request.getParameter("uname");
	String email  = request.getParameter("uemail");
	String gender = request.getParameter("ugen");
	String dob    = request.getParameter("udob");
	String pass   = request.getParameter("upass");
	String cupass = request.getParameter("cupass");
	
    name.trim();dob.trim();gender.trim();
    email.trim();pass.trim();cupass.trim();
	
	    userDao ud = new userDao();
		userP p = new userP(name,gender,dob,email,pass);
		
		if(!ud.checkUser(email))
		{
			if(pass.equals(cupass))
			{
				   ud.addData(p);	
				   response.sendRedirect("userLogin.jsp");
			}
			else if(!pass.equals(cupass))
			{%>
				<script>alert("Warning : Password Didn't Match !! . ");</script>	
			<%}
			
		}else if(ud.checkUser(email)){ %>
		 
			<script>alert("Warning : Your Email Is Already Exists !! . ");</script>		
			<% response.sendRedirect("userLogin.jsp"); %>
             <%
             }
    %>
    </body>
    </html> 
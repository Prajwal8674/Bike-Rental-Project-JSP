<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="adminModel.adminP" %>
<%@page import="adminModel.adminDao" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	
	    adminDao ad = new adminDao();
		adminP p = new adminP(name,gender,dob,email,pass);
		
		if(!ad.checkAdmin(email))
		{
			if(pass.equals(cupass))
			{
				   ad.addData(p);	
				   response.sendRedirect("adminLogin.html");
			}
			else if(!pass.equals(cupass))
			{%>
				<script>alert("Warning : Password Didn't Match !! . ");</script>	
			<%}
			
		}else if(ad.checkAdmin(email)){ %>
		 
			<script>alert("Warning : Your Email Is Already Exists !! . ");</script>		
			<% response.sendRedirect("adminLogin.html"); %>
             <%
             }
    %>

</body>
</html>
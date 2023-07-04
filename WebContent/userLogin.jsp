<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <%@page import="userModel.userDao"%>
    <%@page import="userModel.userP" %> 
    
    
    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%
    String checkmail = request.getParameter("uemail");
    String checkpass = request.getParameter("upass");
    %>
    
    <%
    userDao ud = new userDao();
    
    if(ud.checkForLogin(checkmail, checkpass)){
    	session.setAttribute("email", checkmail);
    	response.sendRedirect("home.jsp");
    }
    else if(!ud.checkForLogin(checkmail, checkpass)){
    	response.sendRedirect("userLogin.html");
    }
    %>
</body>
</html>
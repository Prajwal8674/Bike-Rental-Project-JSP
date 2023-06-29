<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
    <%@page import="adminModel.adminDao"%>
    <%@page import="adminModel.adminP" %> 
    
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
    adminDao ad = new adminDao();
    

    if(ad.checkForLogin(checkmail, checkpass)){
    	response.sendRedirect("homeAdmin.jsp");
    }
    else if(!ad.checkForLogin(checkmail, checkpass)){
    	response.sendRedirect("adminLogin.html");
    }
    %>
</body>
</html>
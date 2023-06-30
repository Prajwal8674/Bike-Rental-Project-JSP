<%@page import="adminModel.adminDao"%>
<%@page import="userModel.userP"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Rider</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("uname");
    String email = request.getParameter("uemail");
    String gender = request.getParameter("ugen");
    String dob = request.getParameter("udob");
    String pass = request.getParameter("upass");
    
    userP p = new userP(id, name, gender, dob, email, pass);
    
    int rowsUpdated = new adminDao().upRider(p);
    if (rowsUpdated > 0) {
        response.sendRedirect("showRiders.jsp");
    } else {
        out.println("Failed to update rider");
        out.println(id);

    }
%>
</body>
</html>

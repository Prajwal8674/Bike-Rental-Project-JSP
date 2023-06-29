<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@page import="adminModel.adminP" %>
    <%@page import="adminModel.adminDao" %>
    <%@page import="userModel.userDao" %>
    <%@page import="userModel.userP" %>
    <%@page import="java.util.ArrayList" %> 
    
  <html>
  <head>
  </head>
  <body>
    <%
	int id = Integer.parseInt(request.getParameter("id"));
	String pid =request.getParameter("pid");

	adminDao ad = new adminDao();
	
	
	int a=ad.delById(id);
	if(a>0){%>
		<script>alert("Message : Rider Deleted !! . ");</script><% 
		response.sendRedirect("showRiders.jsp");
	}

%>
    
  </body>
</html>

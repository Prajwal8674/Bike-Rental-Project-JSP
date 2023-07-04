<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="adminModel.vehicleSoldToP" %>
<%@page import="adminModel.adminDao" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uemail = (String) session.getAttribute("email");
String model = (String) session.getAttribute("model");
String type = (String) session.getAttribute("type");
int price = (Integer)session.getAttribute("price");
int id = (Integer)session.getAttribute("idV");



adminDao ad = new adminDao();
vehicleSoldToP vstp = new vehicleSoldToP(uemail,model,type,price);
ad.broughtV(vstp); 
if(id>0){
	ad.delVbyId(id);
}
response.sendRedirect("showVehicleforU.jsp");
%>
</body>
</html>
<%@page import="main.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
data inserted succesfully
<%
String name=request.getParameter("name");
String fathername=request.getParameter("fathername");
String email=request.getParameter("email");
int contact=Integer.parseInt(request.getParameter("contact"));
String department=request.getParameter("department");
int semester=Integer.parseInt(request.getParameter("semester"));
String address=request.getParameter("address");
int enrollmenty=Integer.parseInt(request.getParameter("enrollmenty"));




 Register service = new RegisterProxy().getRegister();
 
 service.register(name, fathername, email, contact, department, semester, address, enrollmenty);
%>

</body>
</html>
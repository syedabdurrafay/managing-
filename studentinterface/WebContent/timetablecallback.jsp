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
data inserted
<%
String course_id=request.getParameter("course_id");
String day_ofweek=request.getParameter("day_ofweek");
String start_time=request.getParameter("start_time");
String end_time=request.getParameter("end_time");


Timetable service = new TimetableProxy().getTimetable();
service.insert(course_id, day_ofweek, start_time, end_time);







%>
</body>
</html>
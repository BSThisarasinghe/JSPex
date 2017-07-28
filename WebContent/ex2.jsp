<%@page import="java.util.Date" session="true" isThreadSafe="true" info= "This is Example JSP for Page Directive Element" errorPage="WEB-INF/error.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="WEB-INF/header.jsp" %>
	Today: <%=new Date() %>
	
	
	<%
		String id = session.getId();
		long ct = session.getCreationTime();
		long lat = session.getLastAccessedTime();
		
		out.print("<h1> Session Id ="+id+"</h1>");
		out.print("<h1> Session CT ="+ct+"</h1>");
		out.print("<h1> Session LAT ="+lat+"</h1>");
		
		int i = 15/0; //create an error
	%>
</body>
</html>
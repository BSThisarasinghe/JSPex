<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	<!-- Declaration tag -->
	<!-- This is jsp life cycle -->
	<%! 
		Date today = null;
		public void jspInit(){
			today = new Date();
			System.out.println("Date created v2");
		}
		
		public void jspDestroy(){
			today = null;
			System.out.println("Date Destroyed v2");
		}
	%>
	<!-- Scriptlet tag -->
	<% 
		today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd H:m:s");
		String dateString = sdf.format(today);
	%>
	
	<!-- Expression tag -->
	<h1> Now v2: <%=dateString %></h1>
	
	
</body>
</html>
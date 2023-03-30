<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <h1>City:${param.city}</h1>  --%>
<%
String city=request.getParameter("city");
Cookie theCookie=new Cookie("myapp.city",URLEncoder.encode(city, "UTF-8"));
theCookie.setMaxAge(60*60*24*365);
response.addCookie(theCookie);
%> 

<a href="cookie-home.jsp">Cookie Home</a>
</body>
</html>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String city=null;
Cookie[] theCookies=request.getCookies();
if(theCookies!=null){
	for(Cookie tempCookie:theCookies){
		if("myapp.city".equals(tempCookie.getName())){
			city=URLDecoder.decode(tempCookie.getValue(), "UTF-8");
			break;
		}
	}
}

if(city!=null){
	out.println("<h2>Favourite city: "+ city+"</h2>");
}
else{
	out.println("city not found");
}

%>

<a href="cookiesform.jsp">Cookie Form</a>
</body>
</html>
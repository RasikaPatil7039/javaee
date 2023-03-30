<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <%
String firstName=request.getParameter("first_name");
String lastName=request.getParameter("last_name");
%>
<h1>welcome <%=firstName %> <%=lastName %></h1> --%>

<h1>welcome ${param.first_name} ${param.last_name }</h1>

 <h1>Gender:${param.gender}</h1>
  <h1>Favourite Subjects</h1>
  <%
  String[] val = request.getParameterValues("subject");
  for (String x : val) {
    out.print("<li>"+x+"</li>");
  }
  %>
  <h1>Year:${param.year}</h1>
</body>
</html>
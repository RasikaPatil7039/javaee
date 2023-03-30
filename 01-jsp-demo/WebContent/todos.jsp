<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="todos.jsp" method="POST">
		<input type="text" name="text" placeholder="Enter the text" /><br>
		<button type="submit">SUBMIT</button>
	</form>

	<!-- to call/display above form info -->
	
	<%--  <%session.removeValue("todoslist"); %>  --%>
		<%
		List<String> items = (List<String>)session.getAttribute("todoslist");

		if (items == null) {
			items = new ArrayList<>();
		}
		
		String text = request.getParameter("text");
		if(text!=null && text!="" && !items.contains(text)){
		items.add(text);
		session.setAttribute("todoslist", items);
		}
		%>
		
		<ul>
		<%
		for (String x : items) {
			out.print("<li>" + x + "</li>");
		}
		%>
		</ul>
	
</body>
</html>
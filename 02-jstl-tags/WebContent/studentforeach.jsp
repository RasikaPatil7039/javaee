<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.aurionpro.model.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<Student> students = new ArrayList<Student>();
	students.add(new Student("rasika", 1, true, "rasika@gmail.com"));
	students.add(new Student("tejas", 2, false, "tejas@gmail.com"));

	pageContext.setAttribute("studentlist", students);
	%>


<table border="1">
<tr>
<th>rollno</th>
<th>name</th>
<th>schloarship</th>
<th>email</th>
</tr>
<c:forEach var="student" items="${studentlist}">
<tr>
<td>${student.rollno}</td>
<td>${student.name}</td>
<td>${student.scholarship}</td>
<td>${student.email}</td>
</tr>
</c:forEach>

</table>
</body>
</html>
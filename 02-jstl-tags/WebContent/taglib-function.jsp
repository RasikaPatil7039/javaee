<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="String" value="hello guyss!!"/>

<c:if test="${fn:contains(String,'guyss!!') }">
<p>found 'guys!!' string</p>
</c:if>

<c:if test="${fn:endsWith(String,'guyss!!') }">
<p>string ends with 'guys!!'</p>
</c:if>

</body>
</html>
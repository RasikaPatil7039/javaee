<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="student-response.jsp" method="GET">
<input type="text" name="first_name" placeholder="FirstName"/><br>
<input type="text"  name="last_name" placeholder="LastName"/><br>

Gender : <input type="radio" name="gender" value="male"> Male

    <input type="radio" name="gender" value="female"> Female <br>
    Favorite Subject :<br> <input type="checkbox" name="subject"
      value="English"> <label for="subject">English</label><br> <input
      type="checkbox" name="subject" value="Maths"> <label
      for="subject">Maths</label><br> <input type="checkbox"
      name="subject" value="Science"> <label for="subject">Science</label><br>
    Year : <select name="year">
      <option value="">year</option>
      <option value="FY">FY</option>
      <option value="SY">SY</option>
      <option value="TY">TY</option>

    </select><br>

    <button type="submit">SUBMIT</button>
</form>
</body>
</html>
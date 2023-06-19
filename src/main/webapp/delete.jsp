<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update student here</title>
</head>
<body>
<f:form action="" modelAttribute="student">
		<f:input path="id"  /><br>
		<f:input path="name" /><br>
		<f:input path="email" /><br>
		<f:input path="password" /><br>
		<input type="submit" value="delete">
	</f:form>
</body>
</html>
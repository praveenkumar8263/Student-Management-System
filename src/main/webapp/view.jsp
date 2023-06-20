<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Studnets Information</title>
<style>
* {
	margin: 0px;
}

td {
	font-size: 20px;
	text-align: center;
	font-weight: bolder;
	background-color: white;
}

a {
	font-size: 18px;
	font-weight: bold;
	text-decoration: none;
	color: red;
}

a:hover {
	color: black;
}

.main {
	height: 700px;
	background: linear-gradient(60deg, rgb(243, 189, 189),
		rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250),
		rgb(251, 106, 130));
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="main" style="padding: 30px 0px;">
		<center>
			<table  border="7" width="80%" cellpadding="15px" cellspacing="5px">
				<tr align="center" bgcolor="DAF7A6" style="font-size: 20px;">
					<th>Student_Id</th>
					<th>Student_Name</th>
					<th>Student_College</th>
					<th>Student_Gender</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>
				<c:forEach var="student" items="${students}">
					<tr>
						<td>${student.getId()}</td>
						<td>${student.getName()}</td>
						<td>${student.getCollege()}</td>
						<td>${student.getGender()}</td>
						<td><a href="updateStudentData?id=${student.getId()}">CLICK
								HERE TO EDIT</a></td>
						<td><a href="deleteStudentData?id=${student.getId()}">CLICK
								HERE TO DELETE</a></td>
					</tr>
				</c:forEach>
			</table>
		</center>
	</div>
</body>
</html>
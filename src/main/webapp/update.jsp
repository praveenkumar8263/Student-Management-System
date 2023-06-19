<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update student here</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	display: flex;
}

.container form {
	margin: 80px 0px;
	border: 2px solid;
	padding: 50px 50px;
	border-radius: 30px;
	background-color: #F0FAF1;
	box-shadow: 0px 10px 10px 10px #C7F3F9;
}

.container form:hover {
	transform: scale(1.1);
	transition: .7s;
}

.container form input {
	padding-left: 20px;
	background-color: lightlack;
	width: 300px;
	height: 40px;
	font-size: 17px;
	border: 1.2px solid; #74 FE81;
	border-radius: 30px;
	outline: none;
	background-color: lightlack;
}

.container form input:focus {
	border: 2px solid yellow;
	border-color: #ccc;
}

.button {
	background-color: black;
	color: white;
}

#but {width250px;
	background-color: #7883F1;
	color: white;
	font-size: 22px;
	margin-left: 10px;
	font-weight: bold;
}

#but:hover {
	background-color: #EFF759;
	color: black;
	font-size: 18px;
	margin-left: 10px;
	transform: scale(1.04);
	transition: .7s;
}

.main {
	height: 745px;
	background: linear-gradient(60deg, rgb(243, 189, 189),
		rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250),
		rgb(251, 106, 130));
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="main">
	<h1 style="color: blue; padding-top: 30px;color: " align="center">Update Data</h1>
		<div class="container">
			<f:form action="saveUpdateStudent" modelAttribute="student">
				<f:input path="id" readonly="true" />
				<br>
				<br>
				<f:input path="name" placeholder="Enter Student Name" />
				<br>
				<br>
				<f:input path="college" placeholder="Enter College Name" />
				<br>
				<br>
				<f:input path="gender" placeholder="Enter Student Gender" />
				<br>
				<br>
				<input id="but" type="submit" value="update">
			</f:form>
		</div>
	</div>
</body>
</html>
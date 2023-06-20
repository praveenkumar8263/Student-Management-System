<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.container {
	margin: 60px 0px;
	display: flex;
	align-items: center;
	justify-content: center;
	display: flex;
	display: flex;
}

.container form {
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
	font-weight: bold;
}

#but:hover {
	background-color: #EFF759;
	color: black;
	font-size: 18px;
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

a {
	text-align: center;
	text-decoration: none;
	font-size: 20px;
	background-color: white;
	padding: 10px 40px;
	text-decoration: none;
	border-radius: 30px;
	color: #008080;
}

a:hover {
	color: white;
	background: black;
	font-weight: bold;
	transform: scale(1.02);
	transition: .8s;
}
</style>
</head>
<body>
	<div class="main">
		<h2
			style="color: blue; text-align: center; font-size: 50px; padding: 30px 0px">Login with Google </h2>
		<div class="container">
			<f:form action="register" modelAttribute="nullLogin">

				<f:input path="email" placeholder="Enter email"></f:input>
				<br>
				<br>
				<f:input path="password" placeholder="Enter password"></f:input>
				<br>
				<br>
				<input id="but" type="submit" value="login to register">
			</f:form>
		</div>
		<!-- <p style="text-align: center;">
			<a href="view">click here to view and Update if you are existing
				Student</a>
		</p> -->
	</div>
</body>
</html>
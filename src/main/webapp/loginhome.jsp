<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    *
    {
        margin: 0px;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    .main {
        padding: 80px 0px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
      
    }
    h1
    {
        font-size: 30px;
        color: blue;
    }
    a
    {
        font-size: 25px;
        font-weight: bolder;
        text-decoration: none;
        background-color: aquamarine;
        padding: 10px 50px;
        border-radius: 30px;
        color: brown;
    }
    a:hover
    {
        background-color: rgb(242, 208, 164);
        color: black;
        transform: scale(1.1);
        transition: .7s;
    }
    div
    {
        padding: 20px 0px;
    }
    .con
    {
        width: 700px;
        height: 500px;
        border: 2px solid red;
      margin: 50px 400px;
      background-color: #F0FAF1;
      box-shadow: 0px 10px 10px 10px #C7F3F9;
      border-radius: 40px;

    }
    .ma {
	height: 745px;
	background: linear-gradient(60deg, rgb(243, 189, 189),
		rgb(254, 254, 210), rgb(214, 252, 214), rgb(181, 181, 250),
		rgb(251, 106, 130));
	background-repeat: no-repeat;
	background-size: cover;
}
    
</style>

<body>
    <div class="ma">
    <div class="con">
    <div class="main">
        <div id="welcom"><h1> Welcome </h1></div>
        <div id="name"><h1>evolvus solutions private limited</h1></div>
        <div id="login"><a href="login">Login</a></div>
        <div id="update"><h1>Update or Delete the students Data Click here </h1></div>
        <div><a href="view"> click here </a></div>  
    </div>
</div>
</div>
</body>

</html>
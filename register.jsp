<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
	<center>
	<nav class="navbar bavbar-brand" style="text-align:center;"><h3>图书管理系统</h3></nav>
		<ul class="nav nav-tabs nav-justified">
			<li><a href="index.jsp">登录页面</a></li>
			<li class="active"><a href="#">注册页面</a></li>
		</ul>
	<form action="registersuccess.jsp" method="post"
			class="bs-example bs-example-from">
			<div class="input-group">
				<h4>学号：</h4>
				<input type="text" name="user" class="form-control"><br>
				<h4>密码：</h4>
				<input type="password" name="pwd" class="form-control"><br>
				<input type="submit" value="点击注册" class="a a1 btn btn-info"> 
				<input type="reset" value="重置" class="a a2 btn btn-info">
				 
			</div>
		</form>
		<nav class="navber navber-fixed-bottom">
		<p id="time"></p>
		<script type="text/javascript">
		function mytime(){
			var time1 = new Date();
			var time2 = time1.toLocaleTimeString();
			var time3 = time1.toLocaleDateString();
			document.getElementById("time").innerHTML=time3 + "&nbsp" +time2;
		}
			setInterval(function(){mytime()}, 500);
		</script>
	</nav>
		</center>


</body>
</html>
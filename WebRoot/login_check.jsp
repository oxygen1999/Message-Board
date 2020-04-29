<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>用户登陆验证</title>	
	</head>
	<body>
	<%
	
		//获取登录的用户名
		String UserName = request.getParameter("UserName");
		//设置users中的UserName变量
		users.setUserName(UserName);
		//获取登录的密码
		String UserPassword = request.getParameter("UserPassword");	
		//设置users中的UserPassword变量
		users.setUserPassword(UserPassword);
	   
		//判断登录的用户名和密码是否正确		
		if(users.user_valid())
		{
			//将用户名和用户编号保存到session中
			application.setAttribute("UserName",UserName);
			 //out.print(UserName);
			//session.setAttribute("UserID",users.getUserID()+"");
			application.setAttribute("UserID",users.getUserID()+"");
			//out.print(users.getUserID());
			//跳转到登录用户主页
			response.sendRedirect("publish.jsp");
		}
		else
		{
	%>
			<h2 align="center">您输入的用户名或者密码有误</h2>
			<center>
			<input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)"	>
			</center>
	<%
		}
	%>
	</body>
</html>

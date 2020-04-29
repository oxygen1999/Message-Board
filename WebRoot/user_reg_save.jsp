<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>保存注册用户资料</title>
	</head>
	<body>
	<%
	
		//获取注册的用户名
		String UserName = request.getParameter("UserName");
		//设置users中的UserName变量
		users.setUserName(UserName);
		//判断该用户名是否存在
		if(users.is_exist())
		{
	%>
			<h2 align="center">该用户名已经存在</h2>
			<center><input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)"></center>
	<%
		}
		else
		{
			//获取注册的密码
			String UserPassword = request.getParameter("UserPassword");
			//设置users中的UserPassword变量
			users.setUserPassword(UserPassword);
			//判断是否成功保存注册资料
			if(users.add_user())
			{
	%>
				<h2 align="center">注册成功</h2>
				<center>
				<a href="login.jsp" target="_self">现在登录</a>
				</center>
	<%
			}
			else
			{
				out.println("<h1>注册失败，请稍后重试</h1>");
			}		
		}
	%>	
	</body>
</html>

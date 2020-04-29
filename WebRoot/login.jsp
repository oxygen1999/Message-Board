<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>用户登录</title>
		<script language="javascript">
		//判断输入的用户名和密码是否合法
		function check()
		{
			if(login_form.UserName.value == "")
			{//判断用户名是否为空
				alert("用户名不能为空！");
				login_form.UserName.focus();
			}
			else if(login_form.UserPassword.value == "")
			{//判断密码是否为空
				alert("用户密码不能为空！");
				login_form.UserPassword.focus();
			}
			else
			{
				//设置跳转目的页面
				login_form.action="login_check.jsp";
				login_form.target="_top"
			}
		}
		</script>
	</head>
	<body>
		<p align="center"><font size="5">用户登录</font></p>
		<div align="center">
		<form name="login_form" method="post" onSubmit="check()" >
		<table width="60%" border="0">
			<tr>
			<td width="50%" align="right">请输入用户名：</td>
			<td width="50%" align="left"><input type="text" name="UserName"></td>
			</tr>
			<tr>
			<td width="50%" align="right">请输入密码：</td>
			<td width="50%" align="left"><input type="password" name="UserPassword"></td>
			</tr>	
			 
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="登录">&nbsp;&nbsp;
			<input type="reset" name="res" value="重填">
			<br><br>
			<a href=register.jsp>注册用户</a>
			</td>			
			</tr>
		</table>
		</form>
		</div>
	</body>
</html>

<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>新用户注册</title>
		<script language="javascript">
		//判断输入的用户名和密码是否合法
		function check()
		{
			if(reg_form.UserName.value == "")
			{//判断用户名是否为空
				alert("用户名不能为空！");
				reg_form.UserName.focus();
			}
			else if(reg_form.UserPassword.value == "")
			{//判断密码是否为空
				alert("用户密码不能为空！");
				reg_form.UserPassword.focus();
			}
			else if(reg_form.UserPassword.value != reg_form.confirm_UserPassword.value)
			{//判断两次输入的密码是否一致
				alert("两次输入的密码不一致！");
				reg_form.UserPassword.focus();				
			}
			else
			{
				//设置跳转目的页面
				reg_form.action="user_reg_save.jsp";
			}
		}
		</script>
	</head>
	<body>
		<p align="center"><font size="5">新用户注册</font></p>
		<div align="center">
		<form name="reg_form" method="post" onSubmit="check()">
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
			<td width="50%" align="right">请输入确认密码：</td>
			<td width="50%" align="left"><input type="password" name="confirm_UserPassword"></td>
			</tr>
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="注册">&nbsp;&nbsp;
			<input type="reset" name="res" value="重填">
			</td>			
			</tr>
		</table>
		</form>
		</div>
	</body>
</html>

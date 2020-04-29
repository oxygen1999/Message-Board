<%@ page contentType="text/html; charset=gb2312" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>添加留言</title>
	</head>	
	<body>
	<%
		//获取session中的str_UserID变量值
		Object str_UserID = application.getAttribute("UserID");
		Object aa = application.getAttribute("UserName");
	 out.print(str_UserID);
		 out.print(aa);
		//通过判断str_UserID变量是否存在，进而判断用户是否登录
		if(str_UserID == null || str_UserID == "")
		{
		
	%>
			<h2 align="center">您还未登录</h2>
			<p align="center">
			<a href="login.jsp" target="_self">登录</a>
			</p>
	<%
		}
		else
		{
	%>
		<h2><p align="center"><font size="5"color="#0000FF">发布留言</font></p></h2>
		<div align="center">
		<form name="words_form" method="post" action="add_words_save.jsp">
		<table width="80%" border="0">
		<tr>
		<td width="30%" align="right">留言标题：</td>
		<td width="70%" align="left"><input type="text" name="WordsTitle" size="40"></td>
		</tr>
		<tr>
		<td width="30%" align="right">留言内容：</td>
		<td width="70%" align="left"><textarea name="WordsContent" rows="8" cols="40"></textarea></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<input type="submit" name="sub" value="发布">&nbsp;&nbsp;
		<input type="reset" name="res" value="重填">
		<br><br>
		<a href=list.jsp>查看留言</a>&nbsp;&nbsp;
		<a href=logout.jsp>退出</a>
		</td>
		</tr>		
		</table>
		</form>
		</div>
	<%
		}
	%>	
	</body>
</html>

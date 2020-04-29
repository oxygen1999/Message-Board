<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.words" id="words" scope="page"/>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>查看留言内容</title>
	</head>
	<body>
	<%
	
		//获取留言编号值
		String str_WordsID = request.getParameter("WordsID");
		//设置words中WordsID变量的值
		words.setWordsID(Integer.parseInt(str_WordsID));
		//获取该条留言内容
		if(!words.init())
		{
			out.println("<h2 align=center>该留言不存在</h2>");
		}
		else
		{
	%>	
		<p align="center"><font size="5">留言内容</font></p>
		<div align="center">		
		<table width="60%" border="0">
		<tr>
		<td width="30%" align="right"><b>留言标题：</b></td>
		<td width="70%" align="left"><%=words.getWordsTitle()%></td>
		</tr>
		<tr>
		<td width="30%" align="right"><b>留言人：</b></td>
		<td width="70%" align="left">
		<%
			//设置users中的UserID变量
			users.setUserID(words.getUserID());
			//获取留言人的信息
			users.init();			
			out.println(users.getUserName());			
		%>
		</td>
		</tr>
		<tr>
		<td width="30%" align="right"><b>留言内容：</b></td>
		<td width="70%" align="left"><textarea name="WordsContent" rows="8" cols="40" readonly><%=words.getWordsContent()%></textarea></td>
		</tr>		
		<tr>
		<td width="30%" align="right"><b>留言时间：</b></td>
		<td width="70%" align="left"><%=words.getWordsTime()%></td>
		</tr>		
		</table>
		</div>
	<%
		}
	%>
	</body>
</html>

<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.words" id="words" scope="page"/>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>查看所有留言</title>
	</head>
	<body>
		<h2><p align="center"><font size="5"color="#0000FF">所有留言</font></p></h2>
		<div align="center">
	<table width="90%" border="1" cellpadding="3" cellspacing="1">
	<tr bgcolor="#3366cc">
			<td width="10%" align="center"><font size="4"color="#FFFFFF"><b> 编号</b></font></td>
			<td width="40%" align="center"><font size="4"color="#FFFFFF"><b>标题</b></font></td>
			<td width="35%" align="center"><font size="4"color="#FFFFFF"><b>留言时间</b></font></td>
			<td width="15%" align="center"><font size="4"color="#FFFFFF"><b>留言人</b></font></td>
			</tr>
			<%
				//获取所有留言信息
				ResultSet words_rs=words.show_all_words();		
				int i=0;		
				//逐条显示留言信息
				while(words_rs.next())
				{
					 //获取留言人编号
					 int UserID = words_rs.getInt("UserID");					
					 //设置users中的UserID变量
					 users.setUserID(UserID);					
					 //显示留言信息					
					 if(users.init())
					 {
					 	//获取当前留言的编号
						int WordsID=words_rs.getInt("WordsID");
						
			%> 
				<tr>
						<td width="10%" align="center"><%=WordsID%></td>
						<td width="40%" align="left"><a href=content.jsp?WordsID=<%=WordsID%> target="_self"><%=words_rs.getString("WordsTitle")%></a></td>
						<td width="35%" align="left"><%=words_rs.getString("WordsTime")%></td>
						<td width="15%" align="left"><%=users.getUserName()%></td>
						</tr>
			<%		 	
					 }
				}		
			%>
		</table>
		
		</div>	
		<br><br>
		<a href=publish.jsp>添加留言</a>&nbsp;&nbsp;
		<a href=logout.jsp>退出</a>
	</body>
</html>

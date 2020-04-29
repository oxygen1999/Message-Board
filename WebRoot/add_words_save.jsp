<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>保存留言</title>
		<jsp:useBean class="com.ch11.words" id="words" scope="page"/>
	</head>
	<body>
	<%
		//获取session中UserID变量的值
		String str_UserID = application.getAttribute("UserID").toString();
		//设置words中UserID变量的值
		words.setUserID(Integer.parseInt(str_UserID));
		//获取留言标题
		String WordsTitle = request.getParameter("WordsTitle");
		//编码转换
		WordsTitle=new String(WordsTitle.getBytes("iso-8859-1"));
		//设置words中WordsTitle变量的值
		words.setWordsTitle(WordsTitle);
		//获取留言内容
		String WordsContent = request.getParameter("WordsContent");
		//编码转换
		WordsContent=new String(WordsContent.getBytes("iso-8859-1"));
		//设置words中WordsContent变量的值
		words.setWordsContent(WordsContent);
		//判断保存留言是否成功
		if(words.add_words())
		{
		//out.println("<h2 align=center>留言保存成功</h2>");
		response.sendRedirect("list.jsp");
		}
		else
		{
	%>	
			<h2 align="center">留言保存失败</h2>
			<center>
			<input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)">
			</center>
	<%
		}
	%>
	</body>
</html>

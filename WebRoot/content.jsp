<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.words" id="words" scope="page"/>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�鿴��������</title>
	</head>
	<body>
	<%
	
		//��ȡ���Ա��ֵ
		String str_WordsID = request.getParameter("WordsID");
		//����words��WordsID������ֵ
		words.setWordsID(Integer.parseInt(str_WordsID));
		//��ȡ������������
		if(!words.init())
		{
			out.println("<h2 align=center>�����Բ�����</h2>");
		}
		else
		{
	%>	
		<p align="center"><font size="5">��������</font></p>
		<div align="center">		
		<table width="60%" border="0">
		<tr>
		<td width="30%" align="right"><b>���Ա��⣺</b></td>
		<td width="70%" align="left"><%=words.getWordsTitle()%></td>
		</tr>
		<tr>
		<td width="30%" align="right"><b>�����ˣ�</b></td>
		<td width="70%" align="left">
		<%
			//����users�е�UserID����
			users.setUserID(words.getUserID());
			//��ȡ�����˵���Ϣ
			users.init();			
			out.println(users.getUserName());			
		%>
		</td>
		</tr>
		<tr>
		<td width="30%" align="right"><b>�������ݣ�</b></td>
		<td width="70%" align="left"><textarea name="WordsContent" rows="8" cols="40" readonly><%=words.getWordsContent()%></textarea></td>
		</tr>		
		<tr>
		<td width="30%" align="right"><b>����ʱ�䣺</b></td>
		<td width="70%" align="left"><%=words.getWordsTime()%></td>
		</tr>		
		</table>
		</div>
	<%
		}
	%>
	</body>
</html>

<%@ page contentType="text/html; charset=gb2312" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�������</title>
	</head>	
	<body>
	<%
		//��ȡsession�е�str_UserID����ֵ
		Object str_UserID = application.getAttribute("UserID");
		Object aa = application.getAttribute("UserName");
	 out.print(str_UserID);
		 out.print(aa);
		//ͨ���ж�str_UserID�����Ƿ���ڣ������ж��û��Ƿ��¼
		if(str_UserID == null || str_UserID == "")
		{
		
	%>
			<h2 align="center">����δ��¼</h2>
			<p align="center">
			<a href="login.jsp" target="_self">��¼</a>
			</p>
	<%
		}
		else
		{
	%>
		<h2><p align="center"><font size="5"color="#0000FF">��������</font></p></h2>
		<div align="center">
		<form name="words_form" method="post" action="add_words_save.jsp">
		<table width="80%" border="0">
		<tr>
		<td width="30%" align="right">���Ա��⣺</td>
		<td width="70%" align="left"><input type="text" name="WordsTitle" size="40"></td>
		</tr>
		<tr>
		<td width="30%" align="right">�������ݣ�</td>
		<td width="70%" align="left"><textarea name="WordsContent" rows="8" cols="40"></textarea></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
		<br>
		<input type="submit" name="sub" value="����">&nbsp;&nbsp;
		<input type="reset" name="res" value="����">
		<br><br>
		<a href=list.jsp>�鿴����</a>&nbsp;&nbsp;
		<a href=logout.jsp>�˳�</a>
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

<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>����ע���û�����</title>
	</head>
	<body>
	<%
	
		//��ȡע����û���
		String UserName = request.getParameter("UserName");
		//����users�е�UserName����
		users.setUserName(UserName);
		//�жϸ��û����Ƿ����
		if(users.is_exist())
		{
	%>
			<h2 align="center">���û����Ѿ�����</h2>
			<center><input type="button" name="goback" value="����" onClick="javascript:window.history.go(-1)"></center>
	<%
		}
		else
		{
			//��ȡע�������
			String UserPassword = request.getParameter("UserPassword");
			//����users�е�UserPassword����
			users.setUserPassword(UserPassword);
			//�ж��Ƿ�ɹ�����ע������
			if(users.add_user())
			{
	%>
				<h2 align="center">ע��ɹ�</h2>
				<center>
				<a href="login.jsp" target="_self">���ڵ�¼</a>
				</center>
	<%
			}
			else
			{
				out.println("<h1>ע��ʧ�ܣ����Ժ�����</h1>");
			}		
		}
	%>	
	</body>
</html>

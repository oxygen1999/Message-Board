<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<jsp:useBean class="com.ch11.users" id="users" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�û���½��֤</title>	
	</head>
	<body>
	<%
	
		//��ȡ��¼���û���
		String UserName = request.getParameter("UserName");
		//����users�е�UserName����
		users.setUserName(UserName);
		//��ȡ��¼������
		String UserPassword = request.getParameter("UserPassword");	
		//����users�е�UserPassword����
		users.setUserPassword(UserPassword);
	   
		//�жϵ�¼���û����������Ƿ���ȷ		
		if(users.user_valid())
		{
			//���û������û���ű��浽session��
			application.setAttribute("UserName",UserName);
			 //out.print(UserName);
			//session.setAttribute("UserID",users.getUserID()+"");
			application.setAttribute("UserID",users.getUserID()+"");
			//out.print(users.getUserID());
			//��ת����¼�û���ҳ
			response.sendRedirect("publish.jsp");
		}
		else
		{
	%>
			<h2 align="center">��������û���������������</h2>
			<center>
			<input type="button" name="goback" value="����" onClick="javascript:window.history.go(-1)"	>
			</center>
	<%
		}
	%>
	</body>
</html>

<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<% 
		//�Ƴ�session�е�UserID����
		session.removeAttribute("UserID");
		//�Ƴ�session�е�UserName����
		session.removeAttribute("UserName");
		//��ת��δ��¼�û���ҳ
		response.sendRedirect("login.jsp");
%>
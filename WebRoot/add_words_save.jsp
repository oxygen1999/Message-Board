<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page  import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>��������</title>
		<jsp:useBean class="com.ch11.words" id="words" scope="page"/>
	</head>
	<body>
	<%
		//��ȡsession��UserID������ֵ
		String str_UserID = application.getAttribute("UserID").toString();
		//����words��UserID������ֵ
		words.setUserID(Integer.parseInt(str_UserID));
		//��ȡ���Ա���
		String WordsTitle = request.getParameter("WordsTitle");
		//����ת��
		WordsTitle=new String(WordsTitle.getBytes("iso-8859-1"));
		//����words��WordsTitle������ֵ
		words.setWordsTitle(WordsTitle);
		//��ȡ��������
		String WordsContent = request.getParameter("WordsContent");
		//����ת��
		WordsContent=new String(WordsContent.getBytes("iso-8859-1"));
		//����words��WordsContent������ֵ
		words.setWordsContent(WordsContent);
		//�жϱ��������Ƿ�ɹ�
		if(words.add_words())
		{
		//out.println("<h2 align=center>���Ա���ɹ�</h2>");
		response.sendRedirect("list.jsp");
		}
		else
		{
	%>	
			<h2 align="center">���Ա���ʧ��</h2>
			<center>
			<input type="button" name="goback" value="����" onClick="javascript:window.history.go(-1)">
			</center>
	<%
		}
	%>
	</body>
</html>

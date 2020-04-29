<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<% 
		//移除session中的UserID变量
		session.removeAttribute("UserID");
		//移除session中的UserName变量
		session.removeAttribute("UserName");
		//跳转到未登录用户首页
		response.sendRedirect("login.jsp");
%>
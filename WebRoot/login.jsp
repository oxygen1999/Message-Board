<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�û���¼</title>
		<script language="javascript">
		//�ж�������û����������Ƿ�Ϸ�
		function check()
		{
			if(login_form.UserName.value == "")
			{//�ж��û����Ƿ�Ϊ��
				alert("�û�������Ϊ�գ�");
				login_form.UserName.focus();
			}
			else if(login_form.UserPassword.value == "")
			{//�ж������Ƿ�Ϊ��
				alert("�û����벻��Ϊ�գ�");
				login_form.UserPassword.focus();
			}
			else
			{
				//������תĿ��ҳ��
				login_form.action="login_check.jsp";
				login_form.target="_top"
			}
		}
		</script>
	</head>
	<body>
		<p align="center"><font size="5">�û���¼</font></p>
		<div align="center">
		<form name="login_form" method="post" onSubmit="check()" >
		<table width="60%" border="0">
			<tr>
			<td width="50%" align="right">�������û�����</td>
			<td width="50%" align="left"><input type="text" name="UserName"></td>
			</tr>
			<tr>
			<td width="50%" align="right">���������룺</td>
			<td width="50%" align="left"><input type="password" name="UserPassword"></td>
			</tr>	
			 
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="��¼">&nbsp;&nbsp;
			<input type="reset" name="res" value="����">
			<br><br>
			<a href=register.jsp>ע���û�</a>
			</td>			
			</tr>
		</table>
		</form>
		</div>
	</body>
</html>

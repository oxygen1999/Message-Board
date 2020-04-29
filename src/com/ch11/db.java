package com.ch11;
import java.sql.*;

public class db
{ 
	//���ݿ��û���
	String userName="root";
	//���ݿ�����
	String userPassword="123";
    //���ݿ��URL�������������ݿ���ʹ�õı����ʽ
	String url="jdbc:mysql://localhost:3306/ch11?useUnicode=true&characterEncoding=gb2312";
   	//����һ�����Ӷ���
	Connection dbcon;   
   	//������Ϣ��
	Statement stmt;
	ResultSet rs;    	
    /**
	*@��ʼ������,��������������ֵ���������ݿ�
	*/
   	public db()
   	{
   		//��ʼ������ֵ
   		stmt = null;
		rs = null;	
		//�������ݿ�
   	try
		{			
			//�������õ����
			Class.forName("org.gjt.mm.mysql.Driver");
			//������ݿ�����Ӷ���
			dbcon= DriverManager.getConnection(url,userName,userPassword);	
		}
		catch(SQLException ex)
		{
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());		
		}
		catch(ClassNotFoundException ex)
		{
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());	
		}
   	}   	
   	/**
	*@�����ݿ�ִ��sqlִ����䣬��Ҫ�ǲ���͸��²���,����һ������ֵ����
	*/
	public boolean exeSql(String strSql)
	{
		try
		{
   			stmt=dbcon.createStatement();
			stmt.executeUpdate(strSql);
			return true;            
		}
		catch(Exception ex)
		{
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());
			return false;
		}			
	}	
	/**
	*@�����ݿ�ִ��sql��ѯ���,����һ��ResultSet���͵Ķ���
	*/
    public ResultSet exeSqlQuery(String strSql)
	{		
		try
		{
   			stmt=dbcon.createStatement();
			rs =stmt.executeQuery(strSql);			            
		}
		catch(Exception ex)
		{
			//��ӡ���쳣��Ϣ
			System.out.println(ex.toString());
			rs = null;
		}		
		return rs;
	}  
}


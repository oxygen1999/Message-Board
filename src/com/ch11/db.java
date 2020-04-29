package com.ch11;
import java.sql.*;

public class db
{ 
	//数据库用户名
	String userName="root";
	//数据库密码
	String userPassword="123";
    //数据库的URL，包括连接数据库所使用的编码格式
	String url="jdbc:mysql://localhost:3306/ch11?useUnicode=true&characterEncoding=gb2312";
   	//定义一个连接对象
	Connection dbcon;   
   	//错误信息串
	Statement stmt;
	ResultSet rs;    	
    /**
	*@初始化操作,包括给变量赋初值和连接数据库
	*/
   	public db()
   	{
   		//初始化参数值
   		stmt = null;
		rs = null;	
		//连接数据库
   	try
		{			
			//声明所用的类包
			Class.forName("org.gjt.mm.mysql.Driver");
			//获得数据库的连接对象
			dbcon= DriverManager.getConnection(url,userName,userPassword);	
		}
		catch(SQLException ex)
		{
			//打印出异常信息
			System.out.println(ex.toString());		
		}
		catch(ClassNotFoundException ex)
		{
			//打印出异常信息
			System.out.println(ex.toString());	
		}
   	}   	
   	/**
	*@对数据库执行sql执行语句，主要是插入和更新操作,返回一个布尔值变量
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
			//打印出异常信息
			System.out.println(ex.toString());
			return false;
		}			
	}	
	/**
	*@对数据库执行sql查询语句,返回一个ResultSet类型的对象
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
			//打印出异常信息
			System.out.println(ex.toString());
			rs = null;
		}		
		return rs;
	}  
}


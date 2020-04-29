package com.ch11;
import java.util.*;
import java.sql.*;
import java.text.*;

public class users extends db
{
	//定义成员变量
	private int UserID;
    private String UserName;
    private String UserPassword;       
    //执行各种操作的sql语句
    private String strSql;
   
    //构造函数，初始化成员变量
    public users()
    {       
        UserID=0;
        UserName="";
        UserPassword="";         
   		strSql="";   
   }   
   /**
	*@添加用户记录
	*/
   public boolean add_user()
   {
        
        strSql="insert into users ";
        strSql=strSql + "(";
        strSql=strSql + "UserName,";       
        strSql=strSql + "UserPassword";
        strSql=strSql + ") ";
		strSql=strSql + "values(";
		strSql=strSql + "'" + UserName + "',";
		strSql=strSql + "'" + UserPassword + "'";		
		strSql=strSql + ")";
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
   } 
   /**
    *@判断用户名是否存在 by UserName
    */
   public boolean is_exist()
   {
    	strSql="select * from `users` where UserName = '"+UserName+"'";
        ResultSet rs = null;
        boolean isExist = false;              
        try
		{
   		 	rs = super.exeSqlQuery(strSql);
   		 	while(rs.next())
			{
				isExist = true;	
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 			
		}
		return isExist;
   }   
    /**
    *@判断用户名和密码是否正确
    */
   public boolean user_valid()
   {
    	strSql="select * from `users` where";
    	strSql=strSql + " UserName = '"+UserName+"'";
    	strSql=strSql + " and UserPassword = '"+UserPassword+"'";
        ResultSet rs = null;
        boolean isValid = false;              
        try
		{
   		 	rs = super.exeSqlQuery(strSql);
   		 	while(rs.next())
			{
				this.UserID = rs.getInt("UserID");				
				isValid = true;	
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 			
		}
		return isValid;
   }    
   /**
    *@获取某个用户的信息 by UserID
    */
   public boolean init()
   {
    	strSql="select * from `users` where UserID=";
        strSql=strSql +UserID;        
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
                this.UserID=rs.getInt("UserID");
                this.UserName=rs.getString("UserName");
                this.UserPassword=rs.getString("UserPassword");              
                
                return true;
            }
            else
            {
               return false;
            }
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());            
            return false;
		}
   }   
   /**
    *@设置成员变量UserID的值
    */
   public void setUserID(int UserID)
   {
   		this.UserID = UserID;	
   }   
   /**
    *@获取成员变量UserID的值
    */
   public int getUserID()
   {
   		return this.UserID;	
   }   
    /**
    *@设置成员变量UserName的值
    */
   public void setUserName(String UserName)
   {
   		this.UserName = UserName;	
   }   
   /**
    *@获取成员变量UserName的值
    */
   public String getUserName()
   {
   		return this.UserName;	
   }   
    /**
    *@设置成员变量UserPassword的值
    */
   public void setUserPassword(String UserPassword)
   {
   		this.UserPassword = UserPassword;	
   }   
   /**
    *@获取成员变量UserPassword的值
    */
   public String getUserPassword()
   {
   		return this.UserPassword;	
   }   
}

package com.ch11;
import java.util.*;
import java.sql.*;
import java.text.*;

public class users extends db
{
	//�����Ա����
	private int UserID;
    private String UserName;
    private String UserPassword;       
    //ִ�и��ֲ�����sql���
    private String strSql;
   
    //���캯������ʼ����Ա����
    public users()
    {       
        UserID=0;
        UserName="";
        UserPassword="";         
   		strSql="";   
   }   
   /**
	*@����û���¼
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
    *@�ж��û����Ƿ���� by UserName
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
    *@�ж��û����������Ƿ���ȷ
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
    *@��ȡĳ���û�����Ϣ by UserID
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
    *@���ó�Ա����UserID��ֵ
    */
   public void setUserID(int UserID)
   {
   		this.UserID = UserID;	
   }   
   /**
    *@��ȡ��Ա����UserID��ֵ
    */
   public int getUserID()
   {
   		return this.UserID;	
   }   
    /**
    *@���ó�Ա����UserName��ֵ
    */
   public void setUserName(String UserName)
   {
   		this.UserName = UserName;	
   }   
   /**
    *@��ȡ��Ա����UserName��ֵ
    */
   public String getUserName()
   {
   		return this.UserName;	
   }   
    /**
    *@���ó�Ա����UserPassword��ֵ
    */
   public void setUserPassword(String UserPassword)
   {
   		this.UserPassword = UserPassword;	
   }   
   /**
    *@��ȡ��Ա����UserPassword��ֵ
    */
   public String getUserPassword()
   {
   		return this.UserPassword;	
   }   
}

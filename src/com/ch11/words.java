package com.ch11;
import java.util.*;
import java.sql.*;
import java.text.*;
public class words extends db
{
	//定义成员变量
	private int WordsID;
    private String WordsTitle;
    private String WordsContent;    
    private String WordsTime; 
    private int UserID;      
    //执行各种操作的sql语句
    private String strSql;
    //时间格式
    private SimpleDateFormat timeFormatter;
    
    //构造函数，初始化成员变量
    public words()
    {       
        WordsID=0;
        WordsTitle="";
        WordsContent=""; 
        UserID=0;
   		timeFormatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
   		WordsTime=timeFormatter.format(new java.util.Date());
   		strSql="";   
   }   
   /**
	*@添加留言记录
	*/
   public boolean add_words()
   {
        
        strSql="insert into words ";
        strSql=strSql + "(";
        strSql=strSql + "WordsTitle,";       
        strSql=strSql + "WordsContent,";
        strSql=strSql + "WordsTime,";
        strSql=strSql + "UserID";
        strSql=strSql + ") ";
		strSql=strSql + "values(";
		strSql=strSql + "'" + WordsTitle + "',";
		strSql=strSql + "'" + WordsContent + "',";
		strSql=strSql + "'" + WordsTime + "',";
		strSql=strSql + "'" + UserID + "'";
		strSql=strSql + ")";
		boolean isAdd = super.exeSql(strSql);
		return isAdd;
   }     
   /**
    *@获取某条留言 by WordsID
    */
   public boolean init()
   {
    	strSql="select * from `words` where WordsID=";
        strSql=strSql + WordsID;         
        try
		{
   			ResultSet rs = super.exeSqlQuery(strSql);
            if (rs.next())
            {
                //获取留言内容
                this.WordsID=rs.getInt("WordsID");
                this.WordsTitle=rs.getString("WordsTitle");
                this.WordsContent=rs.getString("WordsContent");
                this.WordsTime=rs.getString("WordsTime");                
                this.UserID=rs.getInt("UserID");                
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
    *@显示所有留言
    */
   public ResultSet show_all_words()
   {
    	strSql="select * from `words`";
        ResultSet rs = null;
              
        try
		{
   		 	rs = super.exeSqlQuery(strSql); 
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString()); 
		}
		return rs;
   }   
   /**
    *@设置成员变量WordsID的值
    */
   public void setWordsID(int WordsID)
   {
   		this.WordsID = WordsID;	
   }   
   /**
    *@获取成员变量WordsID的值
    */
   public int getWordsID()
   {
   		return this.WordsID;	
   }   
    /**
    *@设置成员变量WordsTitle的值
    */
   public void setWordsTitle(String WordsTitle)
   {
   		this.WordsTitle = WordsTitle;	
   }   
   /**
    *@获取成员变量WordsTitle的值
    */
   public String getWordsTitle()
   {
   		return this.WordsTitle;	
   }   
    /**
    *@设置成员变量WordsContent的值
    */
   public void setWordsContent(String WordsContent)
   {
   		this.WordsContent = WordsContent;	
   }   
   /**
    *@获取成员变量WordsContent的值
    */
   public String getWordsContent()
   {
   		return this.WordsContent;	
   }   
   /**
    *@设置成员变量WordsTime的值
    */
   public void setWordsTime(String WordsTime)
   {
   		this.WordsTime = WordsTime;	
   }   
   /**
    *@获取成员变量WordsTime的值
    */
   public String getWordsTime()
   {
   		return this.WordsTime;	
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
}


package com.ch11;
import java.util.*;
import java.sql.*;
import java.text.*;
public class words extends db
{
	//�����Ա����
	private int WordsID;
    private String WordsTitle;
    private String WordsContent;    
    private String WordsTime; 
    private int UserID;      
    //ִ�и��ֲ�����sql���
    private String strSql;
    //ʱ���ʽ
    private SimpleDateFormat timeFormatter;
    
    //���캯������ʼ����Ա����
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
	*@������Լ�¼
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
    *@��ȡĳ������ by WordsID
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
                //��ȡ��������
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
    *@��ʾ��������
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
    *@���ó�Ա����WordsID��ֵ
    */
   public void setWordsID(int WordsID)
   {
   		this.WordsID = WordsID;	
   }   
   /**
    *@��ȡ��Ա����WordsID��ֵ
    */
   public int getWordsID()
   {
   		return this.WordsID;	
   }   
    /**
    *@���ó�Ա����WordsTitle��ֵ
    */
   public void setWordsTitle(String WordsTitle)
   {
   		this.WordsTitle = WordsTitle;	
   }   
   /**
    *@��ȡ��Ա����WordsTitle��ֵ
    */
   public String getWordsTitle()
   {
   		return this.WordsTitle;	
   }   
    /**
    *@���ó�Ա����WordsContent��ֵ
    */
   public void setWordsContent(String WordsContent)
   {
   		this.WordsContent = WordsContent;	
   }   
   /**
    *@��ȡ��Ա����WordsContent��ֵ
    */
   public String getWordsContent()
   {
   		return this.WordsContent;	
   }   
   /**
    *@���ó�Ա����WordsTime��ֵ
    */
   public void setWordsTime(String WordsTime)
   {
   		this.WordsTime = WordsTime;	
   }   
   /**
    *@��ȡ��Ա����WordsTime��ֵ
    */
   public String getWordsTime()
   {
   		return this.WordsTime;	
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
}


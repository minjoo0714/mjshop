package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConn {
	private static Connection dbConn;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		if(dbConn==null)
		{
			String url = "jdbc:oracle:thin:@localhost:1521:fta";
			String user = "minjoo";
			String pwd = "0714";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url,user,pwd);
			
		}
		return dbConn;
	}
	
	public static Connection getConnection(String url,String user,String pwd) throws ClassNotFoundException, SQLException
	{
		if(dbConn==null)
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url,user,pwd);
		}
		return dbConn;
		
	}
	// Ãß°¡
	public static Connection getConnection(String url,String user,String pwd,String internal_logon) throws ClassNotFoundException, SQLException
	{
		if(dbConn==null)
		{
			Properties info = new Properties();
			info.put("user",user);
			info.put("pwd", pwd);
			info.put("internal_logon", internal_logon);
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url,info);
		}
		return dbConn;
	}
	
	public static void close() throws SQLException
	{
		if(dbConn!=null)
		{
			if(!dbConn.isClosed())
				dbConn.close();
			
		}
		dbConn = null; 
		
		
	}
		
	
	


}

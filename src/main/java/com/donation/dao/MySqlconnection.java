package com.donation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MySqlconnection {
	public static Connection createconnections(){  
		Connection conn=null;  
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		conn=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/charitylife","root","");  
	
		          
		}catch(Exception e){System.out.println(e);}  
		return conn;  
		}  
}

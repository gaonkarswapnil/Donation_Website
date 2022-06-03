package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDao {
	public static boolean validate(String name,String pass){  
		boolean status=false;  
		try{  
//		Class.forName("com.mysql.jdbc.Driver");  
//		Connection conn=DriverManager.getConnection(  
//		"jdbc:mysql://localhost:3306/charitylife","root","");  
		 
		
		Connection conn= MySqlconnection.createconnections();
		PreparedStatement ps=conn.prepareStatement(  
		"select USERNAME, PASSWORD from ADMIN_LOGIN where USERNAME=? and PASSWORD=?");  
		ps.setString(1,name);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		          
		}catch(Exception e){System.out.println(e);}  
		return status;  
	}
}

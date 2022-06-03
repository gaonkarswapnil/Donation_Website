package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class ChangePasswordDao {
	public static boolean password(String email, String currpass, String repass){
		boolean status=false;  
		try{  
//		Class.forName("com.mysql.jdbc.Driver");  
//		Connection conn=DriverManager.getConnection(  
//		"jdbc:mysql://localhost:3306/charitylife","root","");  
//		
		//Object obj= new MySqlconnection();
		//MySqlconnection.createconnections();
		Connection conn= MySqlconnection.createconnections();
		Statement stmt = conn.createStatement();
		
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("UPDATE `USER_LOGIN` SET `PASSWORD`=? WHERE `EMAIL`=? AND `PASSWORD`=?");
		pstmt.setString(1, repass);
		pstmt.setString(2, email);
		pstmt.setString(3, currpass);
		
		
		pstmt.executeUpdate();
		
		       conn.close();   
		       
		       status = true;
		       System.out.println(pstmt);
		       System.out.println(status);
		       
		}catch(Exception e){
			System.out.println(e);
		}  
		System.out.println(status);
		return status;  
	}
}

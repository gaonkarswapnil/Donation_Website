package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class EditProfileDao {
	public static boolean edit(String address, String state, String district, int pincode, String emailid, long mobileno){  
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
		PreparedStatement pstmt = conn.prepareStatement("UPDATE `USER_LOGIN` SET `ADDRESS`=?,`STATE`=?,`DISTRICT`=?,`PINCODE`=?,`MOBILE_NO`=? WHERE `EMAIL`=?");
		
		pstmt.setString(1, address);
		pstmt.setString(2, state);
		pstmt.setString(3, district);
		pstmt.setInt(4, pincode);
		
		pstmt.setLong(5, mobileno);
		pstmt.setString(6, emailid);
		
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

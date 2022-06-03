package com.donation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class RegisterDao {
	public static boolean register(String firstname,String lastname, String address, String state, String district, int pincode, String emailid, long mobileno, String password){  
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
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO USER_LOGIN (FIRSTNAME, LASTNAME, ADDRESS, STATE, DISTRICT, PINCODE, EMAIL, MOBILE_NO, PASSWORD) VALUES (?,?,?,?,?,?,?,?,?)");
		pstmt.setString(1, firstname);
		pstmt.setString(2, lastname);
		pstmt.setString(3, address);
		pstmt.setString(4, state);
		pstmt.setString(5, district);
		pstmt.setInt(6, pincode);
		pstmt.setString(7, emailid);
		pstmt.setLong(8, mobileno);
		pstmt.setString(9, password);
		
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

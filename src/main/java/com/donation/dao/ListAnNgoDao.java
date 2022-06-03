package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class ListAnNgoDao {
	public static boolean register(String ngoname,String managername, String email, String address, String state, String district, int pincode, String description, long mobileno, Boolean food_donation_flag, Boolean clothes_donation_flag, Boolean medicine_donation_flag, Boolean money_donation_flag){  
		System.out.println("Inside ListAnNgoDao");
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
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO NGO_DETAILS (NGO_NAME, MANAGER_NAME, EMAIL, ADDRESS, STATE, DISTRICT, PINCODE, DESCRIPTION, CONTACT_NO, FOOD_DONATION_FLAG, CLOTHES_DONATION_FLAG, MEDICINE_DONATION_FLAG, MONEY_DONATION_FLAG, IS_REVIEWED) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstmt.setString(1, ngoname);
		pstmt.setString(2, managername);
		pstmt.setString(3, email);
		pstmt.setString(4, address);
		pstmt.setString(5, state);
		pstmt.setString(6, district);
		pstmt.setInt(7, pincode);
		pstmt.setString(8, description);
		pstmt.setLong(9, mobileno);
		pstmt.setBoolean(10, food_donation_flag);
		pstmt.setBoolean(11, clothes_donation_flag);
		pstmt.setBoolean(12, medicine_donation_flag);
		pstmt.setBoolean(13, money_donation_flag);
		pstmt.setBoolean(14, false); //is_reviewed is false while listing NGO
		
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

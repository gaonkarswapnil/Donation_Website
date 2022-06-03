package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class DonationFormDao {
	public static double register(String firstname, String surname, String email,String ngoname, String address, String state, String district, int pincode, Boolean food_donation_flag, String food_text, Boolean clothes_donation_flag, String clothes_text, Boolean medicine_donation_flag, String medicine_text, Boolean money_donation_flag, String money_text){  
		System.out.println("Inside ListAnNgoDao");
		//boolean status=false; 
		double invoice_no=0.0;
		try{  
//		Class.forName("com.mysql.jdbc.Driver");  
//		Connection conn=DriverManager.getConnection(  
//		"jdbc:mysql://localhost:3306/charitylife","root","");  
//		
		//Object obj= new MySqlconnection();
		//MySqlconnection.createconnections();
		Connection conn= MySqlconnection.createconnections();
		Statement stmt = conn.createStatement();
		invoice_no = Math.random();
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO `DONATIONS`(`DONAR_FIRSTNAME`, `DONAR_LASTNAME`, `DONAR_EMAIL`, `NGO_NAME`, `ADDRESS`, `STATE`, `DISTRICT`, `PINCODE`, `FOOD_DONATION_FLAG`, `CLOTHES_DONATION_FLAG`, `MEDICINE_DONATION_FLAG`, `MONEY_DONATION_FLAG`, `FOOD_DONATION_TEXT`, `CLOTHES_DONATION_TEXT`, `MEDICINE_DONATION_TEXT`, `MONEY_DONATION_TEXT`, `INVOICE_NO`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstmt.setString(1, firstname);
		pstmt.setString(2, surname);
		pstmt.setString(3, email);
		pstmt.setString(4, ngoname);
		pstmt.setString(5, address);
		pstmt.setString(6, state);
		pstmt.setString(7, district);
		pstmt.setInt(8, pincode);
		pstmt.setBoolean(9, food_donation_flag);
		pstmt.setBoolean(10, clothes_donation_flag);
		pstmt.setBoolean(11, medicine_donation_flag);
		pstmt.setBoolean(12, money_donation_flag);
		pstmt.setString(13, food_text);
		pstmt.setString(14, clothes_text);
		pstmt.setString(15, medicine_text);
		pstmt.setString(16, money_text);
		pstmt.setDouble(17, invoice_no);
		pstmt.executeUpdate();
		
		       conn.close();   
		       
		      // status = true;
		       System.out.println(pstmt);
		       //System.out.println(status);
		       
		}catch(Exception e){
			System.out.println(e);
		}  
		System.out.println(invoice_no);
		return invoice_no;  
	}
}

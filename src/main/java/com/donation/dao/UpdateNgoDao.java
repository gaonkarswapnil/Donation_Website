package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class UpdateNgoDao {
	public static boolean update(String ngoname,String managername, String email, String address, String state, String district, int pincode, String description, long mobileno, Boolean food_donation_flag, Boolean clothes_donation_flag, Boolean medicine_donation_flag, Boolean money_donation_flag){
		System.out.println("Inside UpdateNgoDao");
		boolean status=false;  
		try{  
//			Class.forName("com.mysql.jdbc.Driver");  
//			Connection conn=DriverManager.getConnection(  
//			"jdbc:mysql://localhost:3306/charitylife","root","");  
//			
			//Object obj= new MySqlconnection();
			//MySqlconnection.createconnections();
			Connection conn= MySqlconnection.createconnections();
			Statement stmt = conn.createStatement();
			
			
			//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
			PreparedStatement pstmt = conn.prepareStatement("UPDATE `NGO_DETAILS` SET `MANAGER_NAME`=?,`ADDRESS`=?,`STATE`=?,`DISTRICT`=?,`PINCODE`=?,`CONTACT_NO`=?,`FOOD_DONATION_FLAG`=?,`CLOTHES_DONATION_FLAG`=?,`MEDICINE_DONATION_FLAG`=?,`MONEY_DONATION_FLAG`=?,`IS_REVIEWED`=? WHERE `NGO_NAME`=? AND `EMAIL`=?");
			
			pstmt.setString(1, managername);
			pstmt.setString(2, address);
			pstmt.setString(3, state);
			pstmt.setString(4, district);
			pstmt.setInt(5, pincode);
			pstmt.setLong(6, mobileno);
			pstmt.setBoolean(7, food_donation_flag);
			pstmt.setBoolean(8, clothes_donation_flag);
			pstmt.setBoolean(9, medicine_donation_flag);
			pstmt.setBoolean(10, money_donation_flag);
			pstmt.setBoolean(11, false); //is_reviewed is false while listing NGO
			pstmt.setString(12, ngoname);
			pstmt.setString(13, email);
			
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

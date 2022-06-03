package com.donation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class NgoReviewDao {
	public static boolean updateReviewStatus(String ngoName, String email){
		boolean status=false;  
		try{  
//		
		Connection conn= MySqlconnection.createconnections();
		Statement stmt = conn.createStatement();
		
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("UPDATE `NGO_DETAILS` SET IS_REVIEWED=? WHERE `NGO_NAME`=? AND `EMAIL`=?");
		pstmt.setBoolean(1, true);
		pstmt.setString(2, ngoName);
		pstmt.setString(3, email);
		
		pstmt.executeUpdate();
		
		       conn.close();   
		       
		       status = true;
		       System.out.println(pstmt);
		       System.out.println(status);
		       
		}catch(Exception e){
			System.out.println(e);
		}  
		System.out.println("Update Query Status:"+status);
		return status;  
	}
	public static boolean deleteInvalidNgo(String ngoName, String email){
		boolean status=false;  
		try{  
//		
		Connection conn= MySqlconnection.createconnections();
		Statement stmt = conn.createStatement();
		
		
		//stmt.executeUpdate("INSERT INTO CUSTOMER_LOGIN (FIRSTNAME, SURNAME, ADDRESS, USERID, PASSWORD) VALUES ('firstname', 'gaonkar', 'Kalyan', 'username', 'admin')");
		PreparedStatement pstmt = conn.prepareStatement("DELETE FROM `NGO_DETAILS` WHERE `NGO_NAME`=? AND `EMAIL`=?;");
		// pstmt.setBoolean(1, false);
		pstmt.setString(1, ngoName);
		pstmt.setString(2, email);
		
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

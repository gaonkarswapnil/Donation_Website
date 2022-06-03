package com.donation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.donation.dao.ListAnNgoDao;

/**
 * Servlet implementation class ListanngoServlet
 */
@WebServlet("/ListNgo")
public class ListanngoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListanngoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();   
	    
		String ngoname = request.getParameter("ngoname");
	 	String managername = request.getParameter("managername");
	 	String address = request.getParameter("address");
	 	String email = request.getParameter("email");
	 	String state = request.getParameter("state");
	 	String district = request.getParameter("district");
	 	int pincode = Integer.parseInt(request.getParameter("pincode"));
	 	String description = request.getParameter("description");
	 	long mobileno = Long.parseLong(request.getParameter("mobileno"));
	 	String[] donationTypeList = request.getParameterValues("donationtype");
	 	Boolean food_donation_flag = false;
	 	Boolean clothes_donation_flag = false;
	 	Boolean money_donation_flag = false;
	 	Boolean medicine_donation_flag = false;
	 	
	 	
	 	System.out.println("Donation"+donationTypeList+" Size:"+donationTypeList.length); 
	 	for(int i=0; i<donationTypeList.length; i++) {
	 		//String Test=request.getParameter(donationTypeList[i]);
	 		//System.out.println("Donation Type"+donationTypeList[i]+ donationTypeList[i]=="money");
	 		if(donationTypeList[i].contentEquals("money")) {
	 			money_donation_flag = true;
	 		}
	 		if(donationTypeList[i].contentEquals("medicine") ) {
	 			medicine_donation_flag = true;
	 		}
	 		if(donationTypeList[i].contentEquals("food")) {
	 			food_donation_flag = true;
	 		}
	 		if(donationTypeList[i].contentEquals("clothes")) {
	 			clothes_donation_flag = true;
	 		}
	 	}
	 	System.out.println("nogname"+ngoname+ " ngo Manager "+managername+" Email"+email+" Address"+address+" State"+state+" District"+district+" Pincode"+pincode+" Description"+description+" Mobileno:"+mobileno+" Medicine:"+medicine_donation_flag+" Food"+food_donation_flag+" Clothes"+clothes_donation_flag+ " Money"+money_donation_flag);
	 	// System.out.println("first:"+ firstname+ " Surname "+ surname+ " state "+state+" district "+district+" pincode "+pincode+" mobileno "+mobileno+" email "+emailid+" password "+password+" address "+address);
	    if(ListAnNgoDao.register(ngoname, managername, email, address, state, district, pincode, description, mobileno,food_donation_flag,clothes_donation_flag,medicine_donation_flag,money_donation_flag)){  
	    	response.sendRedirect("home.jsp");
	    }  
	    else{  
	        out.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("index.html");  
	        rd.include(request,response);  
	    }
		
	}

}

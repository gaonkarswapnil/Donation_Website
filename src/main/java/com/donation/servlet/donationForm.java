package com.donation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.donation.dao.DonationFormDao;
/**
 * Servlet implementation class donateServlet
 */
@WebServlet("/donationForm")
public class donationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donationForm() {
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
	    
		String firstname = request.getParameter("firstname");
	 	String surname = request.getParameter("lastname");
	 	String email = request.getParameter("email");
	 	String ngoname = request.getParameter("ngoname");
	 	String address = request.getParameter("address");
	 	String state = request.getParameter("state");
	 	String district = request.getParameter("district");
	 	int pincode = Integer.parseInt(request.getParameter("pincode"));
	 	String[] donationTypeList = request.getParameterValues("donationtype");
	 	Boolean food_donation_flag = false;
	 	Boolean clothes_donation_flag = false;
	 	Boolean money_donation_flag = false;
	 	Boolean medicine_donation_flag = false;
	 	String money_text = request.getParameter("money_text");
	 	String food_text = request.getParameter("food_text");
	 	String medicine_text = request.getParameter("medicine_text");
	 	String clothes_text = request.getParameter("clothes_text");
	 	
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
	 	System.out.println("firstname"+firstname+ " lastname "+surname+" Email"+email+" ngo name"+ngoname+" Address"+address+" State"+state+" District"+district+" Pincode"+pincode+" Medicine:"+medicine_donation_flag+" Medicine Text"+money_text+" Food"+food_donation_flag+" food Text"+food_text+" Clothes"+clothes_donation_flag+" Clothes Text"+clothes_text+" Money"+money_donation_flag+" Money Text"+money_text);
	 	
	 	
	    double invoice_no = DonationFormDao.register(firstname, surname, email, ngoname, address, state, district, pincode, food_donation_flag, food_text, clothes_donation_flag, clothes_text, medicine_donation_flag, medicine_text, money_donation_flag,money_text);
	 	response.sendRedirect("invoice.jsp?invoice_no="+invoice_no);
	    
	 	
	}

}

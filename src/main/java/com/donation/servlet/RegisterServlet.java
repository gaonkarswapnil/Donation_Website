package com.donation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.donation.dao.RegisterDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		//doGet(request, response);
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();   
	    
		String firstname = request.getParameter("firstname");
	 	String surname = request.getParameter("lastname");
	 	String state = request.getParameter("state");
	 	String district = request.getParameter("district");
	 	int pincode = Integer.parseInt(request.getParameter("pincode"));
	 	long mobileno = Long.parseLong(request.getParameter("mobileno"));
	 	String emailid = request.getParameter("emailid");
	 	String password = request.getParameter("password");
	 	String address = request.getParameter("address");
	 	
	 	System.out.println("first:"+ firstname+ " Surname "+ surname+ " state "+state+" district "+district+" pincode "+pincode+" mobileno "+mobileno+" email "+emailid+" password "+password+" address "+address);
	    if(RegisterDao.register(firstname, surname, address, state, district, pincode, emailid, mobileno, password)){  
	    	response.sendRedirect("login.jsp");
	    }  
	    else{  
	        out.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("index.html");  
	        rd.include(request,response);  
	    }
	}

}

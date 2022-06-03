package com.donation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.donation.dao.EditProfileDao;

/**
 * Servlet implementation class EditProfileServlet
 */
@WebServlet("/EditProfile")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfileServlet() {
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
	    
	    String address = request.getParameter("address");
	 	String state = request.getParameter("state");
	 	String district = request.getParameter("district");
	 	int pincode = Integer.parseInt(request.getParameter("pincode"));
	 	long mobileno = Long.parseLong(request.getParameter("mobileno"));
	 	String emailid = request.getParameter("username");
	 	
	 	EditProfileDao.edit(address, state, district, pincode, emailid, mobileno);
	 	
	 	response.sendRedirect("editProfile.jsp");
	}

}

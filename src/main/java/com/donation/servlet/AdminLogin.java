package com.donation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.donation.dao.AdminLoginDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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

    String name=request.getParameter("username");  
    String password=request.getParameter("userpass");  
    
    try {

	    if(AdminLoginDao.validate(name, password)){  
	    	HttpSession session=request.getSession();  
	        //session.setAttribute("username",n);
	    	session.setAttribute("username",name);
	    
	    	response.sendRedirect("admin/home.jsp?username="+name);
	    }  
	    else{  
	        out.print("Sorry username or password error"); 
	        RequestDispatcher rd=request.getRequestDispatcher("admin/index.jsp");  
	        rd.include(request,response);
	    }
	    System.out.println("Username"+name+"Password"+password);
	}
	catch(Exception e){System.out.println(e);}  
	
	}

}

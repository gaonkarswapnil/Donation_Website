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

import com.donation.dao.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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

    String n=request.getParameter("username");  
    String p=request.getParameter("userpass");  
    
    try {

	    if(LoginDao.validate(n, p)){  
	    	HttpSession session=request.getSession();  
	        //session.setAttribute("username",n);
	    	session.setAttribute("username",n);
	    
	    	response.sendRedirect("home.jsp?username="+n);
	    }  
	    else{  
	        out.print("Sorry username or password error"); 
	        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
	    }
	}
	catch(Exception e){System.out.println(e);}  
	
	}

}

package com.donation.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.donation.dao.NgoReviewDao;

/**
 * Servlet implementation class NgoReview
 */
@WebServlet("/ngoReview")
public class NgoReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NgoReview() {
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
		String reviewButton = request.getParameter("review");
		//String rejectButton = request.getParameter("rejectButton");
		
		String ngoName = request.getParameter("ngoname");
		String email = request.getParameter("email");
		//String ngoName = request.getQueryString();
		System.out.println("acceptButton="+reviewButton+" Ngo Name"+ngoName+" Email"+email);
		if("accept".equals(reviewButton)) {
			System.out.println(true);
			NgoReviewDao.updateReviewStatus(ngoName, email);
		}
		if("reject".equals(reviewButton)) {
			System.out.println(true);
			NgoReviewDao.deleteInvalidNgo(ngoName, email);
		}
		else {
			System.out.println(false);
		}
		response.sendRedirect("admin/review.jsp");
	}

}

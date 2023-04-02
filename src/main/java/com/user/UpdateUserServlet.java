package com.user;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id = 0;
		  
		
		
		   HttpSession session = request.getSession();  // call the session(uid)
		   id = (int) session.getAttribute("id");
			 
			 
			
			List<UserAcc> userAccountDetails = UserDBUtil.getUserAccountDetails(id);  // call the function and get details
			request.setAttribute("userAccountDetails", userAccountDetails);
			
			
			
			RequestDispatcher dis=getServletContext().getRequestDispatcher("/User/userprofile.jsp");  // redirect the profile page and display details
			dis.forward(request, response);
		
	}

}

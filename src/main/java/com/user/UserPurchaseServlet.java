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


@WebServlet("/UserPurchaseServlet")
public class UserPurchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  
		  
		
		
		   HttpSession session = request.getSession();
		   int id = (int) session.getAttribute("id"); // call the session
		   
		   //System.out.print(username);
		
			 
			 
			
			List<Purchase> userDetails = UserDBUtil.getUserPurchaseDetails(id); //get user purchase details
			request.setAttribute("userDetails", userDetails);
			
			
			
		
			
			
			RequestDispatcher dis=getServletContext().getRequestDispatcher("/User/purchase.jsp");  // redirect to the purchase .jsp page(display details)
			dis.forward(request, response);
	}

}

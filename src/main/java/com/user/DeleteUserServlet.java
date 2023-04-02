package com.user;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id = (int) session.getAttribute("id");  // call the session
		
		//System.out.println("id : " + id);
		   
		   
		   boolean isTrue;
			
			isTrue = UserDBUtil.userdelete(id); //call a funtion
			
			if(isTrue == true)
			{
				
				session.invalidate();  //destroy the session
				
				RequestDispatcher dis=getServletContext().getRequestDispatcher("/User/userregister.jsp"); //redirect to userregidter
				dis.forward(request, response);
			}else {
				System.out.println("error true/false"); //deletion is unsuccessful display error msg
			}
			
		   
		   
	}

}

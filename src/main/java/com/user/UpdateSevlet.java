package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UpdateSevlet")
public class UpdateSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//String  id = request.getParameter("id");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String username =request.getParameter("uid");
		
		
		HttpSession session = request.getSession();  // call the session
		int id = (int) session.getAttribute("id");
		
		boolean isTrue;  // declare a boolean variable
		
		isTrue = UserDBUtil.updateuser( id, name,email, phone, username); // check function value is true (correctly worked or not)
		
		if(isTrue == true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("User/userdash.jsp");  // if it is true redirect to the dash
			dis.forward(request, response);
		}
		
		else
		{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your Registration is incompleate');");
			out.println("location ='updateprofile.jsp'");
			out.println("</script>");
		}	
		
		
	}

}

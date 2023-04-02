package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
      
		//get user entered details
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("uid");
		String password=request.getParameter("psw");
		//String rpassword=request.getParameter("pswr");
		
		
		boolean isTrue;
		
		isTrue = UserDBUtil.registeruser(name, email, phone, username, password); // check function is correctly worked or not
		
		if(isTrue == true)
		{
			HttpSession session = request.getSession(); // start session
			
			 List<UserAcc> userDetails = UserDBUtil.getUserDetails( username , password);
	    	  request.setAttribute("userDetails", userDetails);
			
			for(UserAcc u:userDetails) {
		    	   session.setAttribute("id", u.getId()); //create a session
		    	   //System.out.println("id : "  + u.getId());
		    	   }
			
			RequestDispatcher dis=request.getRequestDispatcher("User/userdash.jsp");  // redirect to userdash
			dis.forward(request, response);
		}
		
		else
		{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your Registration is incompleate');");
			out.println("location ='userregister.jsp'");
			out.println("</script>");
		}	
	}

}

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


@WebServlet("/UpdatepasswordServlet")
public class UpdatepasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String oldpassword=request.getParameter("opass");  //get old password and new password
		String newpassword=request.getParameter("npass");
		
		HttpSession session = request.getSession();
		   int id = (int) session.getAttribute("id"); // call the session
		
		
      boolean isTrue;
		
		
		isTrue = UserDBUtil.updatepassword(id,oldpassword, newpassword);  //check function is correctly worked or not
		
		if(isTrue == true)
		{
			//session.invalidate();
	
			RequestDispatcher dis=request.getRequestDispatcher("User/userdash.jsp"); //correct- redirect to the userdash
			dis.forward(request, response);
		}
		
		else
		{
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your password is incorrect');");
			out.println("location ='User/updateprofile.jsp'");
			out.println("</script>"); 
		}
		
		
		
	}

}

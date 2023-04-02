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


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get user entered user name and password
		
		String username=request.getParameter("uid");
		String password=request.getParameter("pass");
		
		boolean isTrue; // declare a boolean variable
		
		
		isTrue = UserDBUtil.validate(username, password);
		
		if(isTrue == true)
		{
			HttpSession session = request.getSession(); //session start
			
			 
   		   List<UserAcc> userDetails = UserDBUtil.getUserDetails( username , password); // get user details
    	   request.setAttribute("userDetails", userDetails);
    	   //System.out.println(userDetails);
    	    
    	   
    	   
    	   for(UserAcc u:userDetails) {
    	   session.setAttribute("id", u.getId()); // create a session to the user id
    	   //System.out.println("id : "  + u.getId());
    	   }
//		
			
			
			RequestDispatcher dis=request.getRequestDispatcher("User/userdash.jsp"); //if  username and password is correct redirect to the user dash board
			dis.forward(request, response);
		}
		
		else
		{
			//incorrect password display error msg and redirect again to the login
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location ='User/userlogin.jsp'");
			out.println("</script>"); 
		}
		
//		try {
	//	List<User>cusDetails=UserDBUtil.validate(username,password);
			//request.setAttribute("cusDetails",cusDetails);
//			 
//			}
//			catch(Exception e){
//				
//				e.printStackTrace();
//			}
//			
		//	RequestDispatcher dis=request.getRequestDispatcher("userdash.jsp");
		//dis.forward(request, response);//do not change the name request and response
	}

}

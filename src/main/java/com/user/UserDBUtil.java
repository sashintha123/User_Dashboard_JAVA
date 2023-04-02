package com.user;

import java.util.ArrayList;


import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.http.HttpSession;




public class UserDBUtil 
{
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static boolean validate(String username, String password) //user login validation function
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			String sql="select * from users where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				isSuccess = true;
				
			}
			
			else
			{
				isSuccess = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	public static List<UserAcc> getUserDetails(String userName , String password) {
		
		ArrayList<UserAcc> userDetails = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from games.users where username='"+userName+"' and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String pass = rs.getString(6);
				
				//System.out.println("name" + name);
				
				
				
				
				UserAcc a = new UserAcc(id,name,email,phone,username,pass);
				
				
				userDetails.add(a);
			}
			
		} 
		
		catch (Exception e)
		{
			System.out.println("error");
			e.printStackTrace();
		}
		
		
		
		return userDetails;	
	}


	
	
	
	
	
public static List<Purchase> getUserPurchaseDetails(int id) {
		
		ArrayList<Purchase> purchase = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * FROM games.order, games.games where games.games.id = games.order.gameId and games.order.userId ='"+id+"'";
			rs = stmt.executeQuery(sql);
			//System.out.println(id);
			
			while (rs.next()) {
				int orderid = rs.getInt(1);
				int gameid = rs.getInt(2);
				String gamename = rs.getString(6);
				int price = rs.getInt(9);
				String date = rs.getString(4);
				
				
				
				Purchase u = new Purchase(orderid,gameid,gamename,price,date);
				
				
				purchase.add(u);
			}
			
		} 
		
		catch (Exception e)
		{
			System.out.println("error");
			e.printStackTrace();
		}
		
		
		
		return purchase;	
	}








public static List<UserFeedback> getUserFeedbackDetails(int id) {
	
	ArrayList<UserFeedback> feedback = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from games.feedback where userId='"+id+"'";
		rs = stmt.executeQuery(sql);
		
		
		while (rs.next()) {
			int feedbackid = rs.getInt(1);			
			String feedbackcom = rs.getString(2);
			
		
			UserFeedback  f = new UserFeedback (feedbackid,feedbackcom);
			
			
			feedback.add(f);
		}
		
	} 
	
	catch (Exception e)
	{
		System.out.println("error");
		e.printStackTrace();
	}
	
	
	
	return feedback;	
}







public static List<UserAcc> getUserAccountDetails(int id) {
	
	ArrayList<UserAcc> updateacc = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from games.users where id='"+id+"'";
		rs = stmt.executeQuery(sql);
		
		
		while (rs.next()) {
			int userid = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			
			
			
			UserAcc a = new UserAcc(userid,name,email,phone,username,password);
			
			
			updateacc.add(a);
		}
		
	} 
	
	catch (Exception e)
	{
		System.out.println("error");
		e.printStackTrace();
	}
	
	
	
	return updateacc;	
}



	






	public static boolean registeruser(String name,String email, String phone, String username,String password)
	{
		boolean isSucces = false;
		
		
		
	try  {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into games.users value(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			
			else
			{
				isSuccess = false;
			}	
			
			
		 }
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
       
		return isSuccess;
	}
	
	
	
	public static boolean userdelete(int id)
	{
		
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			System.out.print("myid"+id);
			
			
			
			
			String sql="delete from users where id ='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			
			else
			{
				isSuccess = false;
			}	
			
			
		 }
		
		catch(Exception e)
		{
			System.out.println("query error");
			e.printStackTrace();
		}
		
       
		return isSuccess;
		
		
	
	
	}
	
	
	
	public static boolean updateuser(int id,String name,String email, String phone, String username)
	{
      try  {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update games.users set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"'"+"where id ='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			
			else
			{
				isSuccess = false;
			}	
			
			
          }
      
      catch(Exception e)
      {
    	  e.printStackTrace();
    	  System.out.println("query error");
      }
		
		return isSuccess;
	}
	
	
	public static boolean updatepassword(int id,String oldpass, String newpass)
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql="select * from games.users where id='"+id+"' and password='"+oldpass+"'";
			rs = stmt.executeQuery(sql);
			
			
			
			if(rs.next())
			{
				//isSuccess = true;
				String sqln="update games.users set  password='"+newpass+"'"+"where id ='"+id+"'";
				int rs = stmt.executeUpdate(sqln);
				
				if(rs > 0)
				{
					isSuccess = true;
				}
				
				else
				{
					isSuccess = false;
				}	
			}
			
			else
			{
				isSuccess = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("query error");
		}
		return isSuccess;
	}
	
	
	
	
	
//	public static List<User> getUser(String username)
//	{
//		ArrayList<User> user=new ArrayList<>();
//		
//		
//		
//		//validate
//		
//		try {
//			con = DBConnect.getConnection();
//			stmt = con.createStatement();
//			  
//			String sql="select * from customer where username='"+username+"'";
//			rs = stmt.executeQuery(sql);
//			
////			while(rs.next()) {
////				
////				   int id =rs.getInt(1);
////				   String name =rs.getString(2);
////				   String email =rs.getString(3);
////				   String phone =rs.getString(4);
////				   String userU =rs.getString(5);
////				   String passU =rs.getString(6);
////				   
////				
////				User u=new User(id,name,email,phone,userU,passU);
////				user.add(u);//added to the array
////				
////				
////			}
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		return user;
//	}

}

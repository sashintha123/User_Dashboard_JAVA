package com.user;

public class User 
{
	
	   private int orderid;
	   
	   private String userName;
	  
	   private String gameid;
	   private String gamename;
	   private String orderdate;
	   
	   
		

		
	

	public User(int orderid, String gameid, String gamename,String userName, String orderdate) {
		
		this.orderid = orderid;
		this.gameid = gameid;
		this.gamename = gamename;
		this.userName = userName;
		this.orderdate = orderdate;
	}

	public int getOrderid() {
		return orderid;
	}

	public String getGameid() {
		return gameid;
	}

	
	public String getGamename() {
		return gamename;
	}

	
	public String getUserName() 
	{
		return userName;
	}
	

	public String getOrderdate() {
		return orderdate;
	}
	

}

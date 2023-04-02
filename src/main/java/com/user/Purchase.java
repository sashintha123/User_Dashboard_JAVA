package com.user;

public class Purchase {
	
	   private int orderid;
	  
	   private int gameid;
	   private String gamename;
	   private int price;
	   private String orderdate;
	   
	public Purchase(int orderid, int gameid, String gamename,int price, String orderdate) {
		
		this.orderid = orderid;
		this.gameid = gameid;
		this.gamename = gamename;
		this.price = price;
		this.orderdate = orderdate;
	}

	public int getOrderid() {
		return orderid;
	}
	

	public int getGameid() {
		return gameid;
	}

	
	public String getGamename() {
		return gamename;
	}
	
	public int getprice() {
		return price;
	}

	
	public String getOrderdate() {
		return orderdate;
	}

	


}

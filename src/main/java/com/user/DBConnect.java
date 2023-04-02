package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect

{
	//Data base details
	private static String url = "jdbc:mysql://localhost:3306/games";
	private static String username ="root";
	private static String password = "sashintha123";
	private static Connection con;
	
	//data base connection try catch block
	public static Connection getConnection() {
		
		try {
			//run java interfaces helper
			Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection(url, username, password); //call database
		}
		
		catch(Exception e)
		{
			System.out.println("Database connection is not succesful");
		}
		
		return con;
	}
}

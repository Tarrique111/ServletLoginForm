package com.bridgelabz.DAO;

import java.sql.*;

public class DataAccessObject {

	/**
	 * @return
	 * @throws Exception
	 *             Get the DBCOneection to mysql DB
	 */
	public static Connection dbConnection() throws Exception {

		// 1.load the Driver
		Class.forName("com.mysql.jdbc.Driver");

		// 2.Get the dbConnection via Driver
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Emplyee_Info", "root", "imran");

		return con;
	}

	/**
	 * @param name
	 * @param email
	 * @param password
	 * @param confirmPassword
	 * @param mobileNum
	 *            Inserting a record in database
	 * @return
	 */
	public static int insertRecord(String name, String email, String password, String confirmPassword,
			String mobileNum) {
		int count = 0;
		try {
			Connection con = dbConnection();
			PreparedStatement pstmt;
			pstmt = con.prepareStatement("insert into CreateUser7 values(?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			pstmt.setString(4, confirmPassword);
			pstmt.setString(5, mobileNum);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	/**
	 * @param email
	 * @param mobileNumber
	 * @return
	 * @throws Exception
	 *             Method is used to fetch the record
	 */
	public static ResultSet fetchRecord() throws Exception {
		Connection con = dbConnection();
		Statement stmt = null;
		ResultSet rs = null;

		stmt = con.createStatement();

		rs = stmt.executeQuery("select * from CreateUser7");

		return rs;
	}

	/**
	 * @param mail
	 * @param password
	 * @return
	 * @throws Exception
	 * Method to find the record in data base
	 */
	public static String findRecord(String mail, String password) throws Exception {
		Connection con = dbConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		pstmt = con.prepareStatement("select * from CreateUser7");
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String name = rs.getString(1);
			String mails = rs.getString(2);
			String pass = rs.getString(3);
			if (mail.equals(mails) && pass.equals(password)) {
				return name;
			}
		}
		return null;
	}


/*	public static boolean findingRecords(String mail, String mobileNum) throws Exception {
		Connection con = dbConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		stmt = con.createStatement();
		
		rs = stmt.executeQuery("select * from CreateUser7");
		
		while(rs.next()) {
			String mails = rs.getString(2);
			String mobileNumber = rs.getString(5);
			
			if(mails.equals(mail) && mobileNum.equals(mobileNumber))
				return true;
		}
		return false;
	}*/
}

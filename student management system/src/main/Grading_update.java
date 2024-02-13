package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Grading_update {
	

	    public String update(String Student_Name, String Course_ID, String Course, String Grade, String Result) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();

	            String query = "UPDATE grading SET Student_Name = '" + Student_Name + "', Course_ID = '" + Course_ID + "', Course = '" + Course + "', Grade = '" + Grade + "', Result = '" + Result + "' WHERE Student_Name = '" + Student_Name + "'";

	            stmt.executeUpdate(query);

	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return "";
	    }
	}
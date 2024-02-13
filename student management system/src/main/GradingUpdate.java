package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class GradingUpdate {


	
	    public String update(String Student_Name, String Course_ID, String Grade, String Result) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();

	            // Modify the query for UPDATE operation
	            String query = "UPDATE grading SET Grade = '" + Grade + "', Result = '" + Result + "' WHERE Student_Name = '" + Student_Name + "' AND Course_ID = '" + Course_ID + "'";
	            
	            stmt.executeUpdate(query);
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return "";
	    }
	}



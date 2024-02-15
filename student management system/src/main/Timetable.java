package main;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;

public class Timetable {


	
			public String insert(String Course_ID,String DayOfWeek,String StartTime,String EndTime) {			
				try{
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection con =
					 DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
					 Statement stmt=con.createStatement();
					 String query = "insert into time_table(Course_ID,DayOfWeek,StartTime,EndTime) values('"+Course_ID+"','"+DayOfWeek+"','"+StartTime+"','"+EndTime+"')";
					 
					 //ResultSet rs=
					 
					 stmt.executeUpdate(query);

					//rs.next();
				} catch(Exception e)
				 {
				 System.out.println(e);
				 
				 }
				return "";
			}
		

}
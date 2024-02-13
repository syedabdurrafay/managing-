package main;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;
public class Grading {
		public String insert(String Student_Name,String Course_ID,String Course,String Grade,String Result) {			
			try{
				 Class.forName("com.mysql.jdbc.Driver");
				 Connection con =
				 DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
				 Statement stmt=con.createStatement();
				 String query = "insert into grading(Student_Name,Course_ID,Course,Grade,Result) values('"+Student_Name+"','"+Course_ID+"','"+Course+"','"+Grade+"','"+Result+"')";
				 
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

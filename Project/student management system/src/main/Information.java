package main;
import java.sql.*;

public class Information {
	public String getregistration(String student)
	
	{
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con =
			 DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			 Statement stmt=con.createStatement();
			 ResultSet rs=stmt.executeQuery("SELECT \r\n" + 
			 		"    registration.S_id, \r\n" + 
			 		"    registration.S_Name, \r\n" + 
			 		"    registration.Father_Name, \r\n" + 
			 		"    registration.Department,\r\n" + 
			 		"    registration.Email,\r\n" + 
			 		"    registration.Contact_No,\r\n" + 
			 		"    registration.Semester,\r\n" + 
			 		"    registration.Address,\r\n" + 
			 		"  \r\n" + 
			 		"    registration.Enrollment_Year\r\n" + 
			 		"    \r\n" + 
			 		"FROM \r\n" + 
			 		"    registration \r\n" + 
			 		"JOIN \r\n" + 
			 		"    time_table ON registration.S_id = time_table.Student_ID\r\n" + 
			 		"WHERE \r\n" + 
			 		"    registration.S_Name =' "+ student +"';");

			rs.next();
			 String registration="registration " + rs.getString(1) +  "  " + rs.getString(2) + "  "+ rs.getString(3) + "  "+ rs.getString(4) + "  " + rs.getString(5) + "  "+ rs.getString(6) + "  "+ rs.getString(7) + "  "+ rs.getString(8) + "  "     
			 + rs.getString(9);
			
			 con.close();
			 return registration;
			 } catch(Exception e)
			 {
			 System.out.println(e);
			 
			 }
		 return "";
	}
}
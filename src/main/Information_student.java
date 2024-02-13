package main;
import java.sql.*;
public class Information_student {




	public Student getregistration(String studentName)
	
	{
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con =
			 DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			 Statement stmt=con.createStatement();
			 String query = "SELECT * FROM registration WHERE registration.S_Name ='" + studentName + "';";
			 
			 ResultSet rs=stmt.executeQuery(query);

			rs.next();
			
			Student student = new Student();
			
			 student.S_id = rs.getInt(1);
			 student.S_Name = rs.getString(2);
			 student.Father_Name = rs.getString(3);
			 student.Email = rs.getString(4);
			 student.Conatct_No = rs.getInt(5);
			 student.Department = rs.getString(6);
			 student.Semester = rs.getString(7);
			 student.Address = rs.getString(8);
			 student.Enrollment_Year = rs.getString(9);
			
			 con.close();
			 
			 return student;
			 } catch(Exception e)
			 {
			 System.out.println(e);
			 
			 }
		 return null;
	}
}

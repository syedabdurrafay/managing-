package main;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;

public class Register {
	public String register(String name,String fathername,String email,int contact,String department,int semester,String address,int enrollno) {
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con =
			 DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			 Statement stmt=con.createStatement();
			 String query = "insert into registration(S_Name,Father_Name,Email,Contact_No,Department,Semester,Address,Enrollment_Year) values('"+name+"','"+fathername+"','"+email+"','"+contact+"','"+department+"','"+semester+"','"+address+"','"+enrollno+"')";
			 
			 //ResultSet
			 stmt.executeUpdate(query);

			//rs.next();
		} catch(Exception e)
		 {
		 System.out.println(e);
		 
		 }
		
		return "";
	}
}
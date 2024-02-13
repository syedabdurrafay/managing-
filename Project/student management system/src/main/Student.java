package main;
import java.sql.*;
public class Student {

	public static void main(String[] args) {
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
					"    registration.S_Name = 'Farhan Iftikhar'; ");

			while(rs.next())
			{
			System.out.println("registration: " + rs.getString(1)+ " registration name: " + rs.getString(2) + " Father name: " + rs.getString(3)+ " Email: " + rs.getString(4)+ " Contact_no: " + rs.getString(5)+ " semster: " );
			}
			con.close();
			} catch(Exception e)
			{
			System.out.println(e);
			}

	}

}

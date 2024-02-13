package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Delete {
public String delete( String S_Name) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
	            Statement stmt = con.createStatement();

	            // Modify the query for DELETE operation
	            String query = "DELETE FROM registration  WHERE  S_Name = '" + S_Name + "'  ";
	            
	            stmt.executeUpdate(query);
	        } catch (Exception e) {
	            System.out.println(e);
	        } 
	        return "";
}
}
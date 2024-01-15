package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Insert {

    public String insert(String Course_ID, String DayOfWeek, String StartTime, String EndTime) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            Statement stmt = con.createStatement();

            
            String query = "INSERT INTO time_table(Course_ID, DayOfWeek, StartTime, EndTime) VALUES('" + Course_ID + "','" + DayOfWeek + "','" + StartTime + "','" + EndTime + "')";

            stmt.executeUpdate(query);
        } catch (Exception e) {
            System.out.println(e);
        }
        return "";
    }
}

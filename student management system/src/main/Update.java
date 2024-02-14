package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Update {

    public String update(String Course_ID, String newStartTime, String newEndTime) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            Statement stmt = con.createStatement();

  
            String query = "UPDATE time_table SET StartTime = '" + newStartTime + "', EndTime = '" + newEndTime + "' WHERE Course_ID = '" + Course_ID + "'";

            stmt.executeUpdate(query);
        } catch (Exception e) {
            System.out.println(e);
        }
        return "";
    }
}

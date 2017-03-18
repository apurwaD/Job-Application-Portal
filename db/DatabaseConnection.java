/*  
 *
 * 
 * @version   : DatabasebConnection.java,v 1.1 2016/28/03 22:34:10 
 * 
 * @author    : Apurwa Dandekar  Id$ ard5145
 *             
 * 
 */

package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnection {

	public Connection con;

	/*
	 * fuction : connect to the database
	 * 
	 * @return : none
	 */
	public void connect() {
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// connect to oracle database with username and password
			con = DriverManager.getConnection(url, "SYSTEM", "healthaas");
			System.out.println("Connected");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
        
        /*
	 * fuction : disconnect to the database
	 * 
	 * @return : none
	 */
	public void disconnect() {

		try {
			con.close();
			System.out.println("disconnected from DB");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
        
        
       /*
	 * fuction : to check the status of the application i.e 
        corresponding userid and jobid exists in the database
	 * 
	 * @return : none
	 */
      public boolean checkApplicationStatus(String userid, String jobid){
          connect();

            String selectSQL = "select * from applicationstatus where userId=? And jobid=?";
            PreparedStatement ps;
        try {
            ps = con.prepareStatement(selectSQL);
            ps.setString(1, userid);
            ps.setString(2, jobid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            return false;
        }
        return false;
      }
      
      /*
	 * fuction : update application status insert userid and jobid in the 
            application 
	 * 
	 * @return : none
	 */
      public boolean insertUserIdJobId(String userID, String jobid) {
        
        connect();
        
        String insertSQL = "insert into applicationstatus"+
                "(userid,jobid) values"+"(?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(insertSQL);
            ps.setString(1, userID);
            ps.setString(2, jobid);
            ps.executeUpdate();
            System.out.println("******************record inserted****************");
        } catch (Exception ex) {
            return false;
        }
        return false;
    }
}
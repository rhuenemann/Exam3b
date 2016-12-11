
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;


public class UpdateQueryCUS {
    
    private Connection conn;
    
    public UpdateQueryCUS(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(UpdateQueryCUS.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(UpdateQueryCUS.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateQueryCUS.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQueryCUS.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void doUpdate(Customers customer){
        
        try {
            String query = "UPDATE customers SET firstName = ?, lastName = ?, addr1 = ?, addr2 = ?, city = ?, state = ?, zip = ?, emailAddr = ? WHERE custID = ?";
            
            PreparedStatement ps1 = conn.prepareStatement(query);
            
            
            ps1.setString(1, customer.getFirstName());
            ps1.setString(2, customer.getLastName());
            ps1.setString(3, customer.getAddr1());
            ps1.setString(4, customer.getAddr2());
            ps1.setString(5, customer.getCity());
            ps1.setString(6, customer.getState());
            ps1.setString(7, customer.getZip());
            ps1.setString(8, customer.getEmailAddr());
            ps1.setInt(9, customer.getCustID());
            
            ps1.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQueryCUS.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}


package metro_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
;


public class Metro_System implements convar {

    
    public static void main(String[] args) {
         Connection myconnection;
        
        
        try{
             myconnection =DriverManager.getConnection(path+place, username, password);
             try
             {
                 String query="select* from admintable ";
                 PreparedStatement mystatement=myconnection.prepareStatement(query);
                 
                 ResultSet myres = mystatement.executeQuery();
                 
                 if(myres.next())
                 {
                      login obj=new login();
                      obj.setVisible(true);

                     
                 }
                 else{ 
                                      JOptionPane.showMessageDialog(null, "Running software for first time.Create Admin.");
                                      createadmin obj1=new createadmin();
                                      obj1.setVisible(true);
                                      

             }
             }
             catch(Exception e)
             {
                 JOptionPane.showMessageDialog(null, "Error:"+e.getMessage());
             }
             finally
                     {
                         myconnection.close();
                     }
        }
        
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Connection Error:"+e.getMessage());
        }
       
    }
    
}

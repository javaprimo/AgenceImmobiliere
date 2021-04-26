package gestion;

import java.sql.*;

public class MySqlConnection {
    
    public MySqlConnection() throws ClassNotFoundException, SQLException{}
    
    public static Connection getSqlConnection() throws ClassNotFoundException, SQLException{
    	try{
            Class.forName("com.mysql.jdbc.Driver");  
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenceimmobiliere","root","")) {
                return con;
            }
            catch(SQLException e){ 
                System.out.println(e);
            }
        }
        catch(ClassNotFoundException e){ 
            System.out.println(e); 
        }
        return null;
    }
    
    public static ResultSet runSelectQuery(String selectQueryStr) throws ClassNotFoundException, SQLException{
        Connection con = getSqlConnection();
        try(Statement stmt = con.createStatement()) {
            return stmt.executeQuery(selectQueryStr);
        }
        catch(SQLException e){
            System.out.println(e); 
        }
        
        return con.createStatement().executeQuery(selectQueryStr);
    }
    
    public static int runUpdateQuery(String updateQueryStr) throws ClassNotFoundException, SQLException{
        Connection con = getSqlConnection();
        try(Statement stmt = con.createStatement()) {
            return stmt.executeUpdate(updateQueryStr);
        }
        catch(SQLException e){
            System.out.println(e); 
        }
        
        return -1;
    }
}

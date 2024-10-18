package project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import project.exception.DbException;

public class JDBCconnection {
private static final String SCHEMA = "project";
private static final String USER = "project";
private static final String PASSWORD = "project";
private static final String HOST = "localhost";
private static final int PORT = 3306;

public static Connection getconnection() {
  String url = String.format("jdbc:mysql://%s:%d/%s?user=%s&password=%s&usesSSL=false", 
      HOST, PORT, SCHEMA, USER, PASSWORD);
  
  System.out.println("Connecting with url=" + url);
  
  try {
    Connection conn = DriverManager.getConnection(url);
    System.out.println("Successfully obtained connection!");
   return conn;
  } catch (SQLException e) {
    throw new DbException(e);
    
  }
}
}

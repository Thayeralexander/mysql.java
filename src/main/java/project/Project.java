package project;
import java.sql.Connection;
import project.dao.JDBCConnection;

public class Project {
  public static void main(String[] args) {
    Connection connection = JDBCConnection.getConnection();
    System.out.println("Ready...");
  }
}

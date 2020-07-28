package libs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {
    static Connection con;

    public static Connection getConnection() throws ClassNotFoundException, SQLException  {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cnpm?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con;
        } else {
            return con;
        }
    }

    public static void main(String[] args) throws Exception {
    }
}

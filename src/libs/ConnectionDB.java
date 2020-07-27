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
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cnpm?useUnicode=true&characterEncoding=utf-8", "", "");
            return con;
        } else {
            return con;
        }
    }

    public static void main(String[] args) throws Exception {
//        Statement s = ConnectionDB.connect().createStatement();
//        ResultSet rs = s.executeQuery("select * from user");
////        int i=rs.
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()) {
//            System.out.println(rs.getString(2));
//        }
    }
}

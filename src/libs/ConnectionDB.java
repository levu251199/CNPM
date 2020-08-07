package libs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {
    static Connection con;
//    private static final String host = "localhost:3306";
//    private static final String db = "cnpm";
//    private static final String url = "jdbc:mysql://" + host + "/" + db + "?useUnicode=true&characterEncoding=utf-8";
//    private static final String user = "root";
//    private static final String password = "";

    private static final String host = "node231628-learnmath.j.layershift.co.uk";
    private static final String db = "cnpm";
    private static final String url = "jdbc:mysql://" + host + "/" + db + "?useUnicode=true&characterEncoding=utf-8";
    private static final String user = "root";
    private static final String password = "NSTkid61131";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        }
        return con;
    }

    public static void main(String[] args) throws Exception {
    }
}

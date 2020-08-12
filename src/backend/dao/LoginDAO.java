package backend.dao;

import backend.model.Account;
import backend.model.SocialAccount;
import libs.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    // Kiểm tra tài khoản trong table account
    public static Account checkLogin(String username, String password) {
        Account account;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql;
        try {
            // Duyệt all bảng để kiếm
            sql = "SELECT * FROM account WHERE username=? AND pass=?";
            pst = ConnectionDB.getConnection().prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            while (rs.next()) {
                // Gắn giá trị từ database vào account để đưa lên màn hình trang web
                account = new Account();
                account.setUsername(rs.getString("username"));
                account.setPass(rs.getString("pass"));
                account.setAdmin(rs.getInt("admin"));
                return account;
            }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Thêm dòng thông tin vào bảng social_account
    public static void insertSocial(String id, String name) {
        SocialAccount socialAccount;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql;
        try {
            sql = "INSERT INTO social_account (id,name) VALUES (?,?)";
            pst = ConnectionDB.getConnection().prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, name);
            rs = pst.executeQuery();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }

    // Kiểm tra dữ liệu bảng social_account
    public static SocialAccount checkSocialLogin(String id, String name) {
        SocialAccount socialAccount;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql;
        try {
            // Duyệt all bảng để kiếm
            sql = "SELECT * FROM social_account WHERE id=? AND name=?";
            pst = ConnectionDB.getConnection().prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, name);
            rs = pst.executeQuery();
            while (rs.next()) {
                // Gắn giá trị từ database vào account để đưa lên màn hình trang web
                socialAccount = new SocialAccount();
                socialAccount.setId(rs.getString("id"));
                socialAccount.setName(rs.getString("name"));
                return socialAccount;
            }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

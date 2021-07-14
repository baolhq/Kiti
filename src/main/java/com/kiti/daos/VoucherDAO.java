package com.kiti.daos;

import com.kiti.db.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class VoucherDAO {
    public static Connection connection = DBConnection.getConnection();

    public static ResultSet getAllVouchers() {
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM Vouchers");
            return rs;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}

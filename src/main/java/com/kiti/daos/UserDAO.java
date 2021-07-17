package com.kiti.daos;

import com.kiti.db.DBConnection;
import com.kiti.models.User;

import java.sql.*;

public class UserDAO {
    public static Connection connection = DBConnection.getConnection();

    public static User login(String username, String password) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT username FROM Users WHERE username=? AND password=MD5(?)");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return new User(resultSet.getString(1));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public static String getFullName(String username) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("SELECT fullname FROM Users WHERE username=?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return resultSet.getString(1);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public static boolean isUsernameExist(String username) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("SELECT username FROM Users WHERE username=?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public static boolean register(String username, String password) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO Users(fullName, username, password, address, phoneNumber, isAdmin) VALUES ('', ?, MD5(?), '', '', 0)");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            int count = preparedStatement.executeUpdate();
            System.out.println(count);
            if (count > 0) return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}

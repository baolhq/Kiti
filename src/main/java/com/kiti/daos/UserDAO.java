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
}

package com.trainingbasket.tbsms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.trainingbasket.tbsms.beans.User;
import com.trainingbasket.tbsms.utils.ConnectionUtils;

public class AuthDAO {

	Statement statement = null;
	ResultSet resultSet = null;
	Connection connection = null;
	PreparedStatement pStatement = null;;

	public AuthDAO() throws SQLException, ClassNotFoundException {
		connection = ConnectionUtils.getConnection();
	}

	public User getUser(User user) throws SQLException {
		User userfromDb = new User();
		String sql = "SELECT * FROM sem1pro.users where username=? and password=?";
		pStatement = connection.prepareStatement(sql);
		pStatement.setString(1, user.getUsename());
		pStatement.setString(2, user.getPassword());
		resultSet = pStatement.executeQuery();
		while (resultSet.next()) {
			userfromDb.setUsename(resultSet.getString(1));
			userfromDb.setPassword(resultSet.getString(2));
		}
		return userfromDb;
	}

}

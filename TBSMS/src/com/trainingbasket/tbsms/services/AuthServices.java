package com.trainingbasket.tbsms.services;

import java.sql.Connection;
import java.sql.SQLException;

import com.trainingbasket.tbsms.beans.User;
import com.trainingbasket.tbsms.dao.AuthDAO;

public class AuthServices {

	AuthDAO authDAO = null;

	public AuthServices(AuthDAO authDAO) {
		this.authDAO = authDAO;
	}

	public boolean autheticateUser(User user) {
		// DAO
		boolean status= false;
		try {
			User userFromDb = authDAO.getUser(user);
			if(userFromDb==null) {
				return false;
			}
			if (userFromDb.getPassword().equals(user.getPassword())
					&& userFromDb.getPassword().equals(user.getPassword())) {
				status= true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
}

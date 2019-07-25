package com.trainingbasket.tbsms.utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Listener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		try {
			Connection connection = ConnectionUtils.getConnection();
			sce.getServletContext().setAttribute("DbConnection", connection);
			System.out.println("Connection Created "+connection.getMetaData().getMaxSchemaNameLength());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

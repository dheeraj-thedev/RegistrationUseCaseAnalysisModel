package com.trainingbasket.tbsms.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trainingbasket.tbsms.beans.User;
import com.trainingbasket.tbsms.dao.AuthDAO;
import com.trainingbasket.tbsms.services.AuthServices;
import com.trainingbasket.tbsms.utils.ValidateNormalData;

/**
 * Servlet implementation class AuthController
 */
@WebServlet("/AuthController")
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AuthServices authServices = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AuthController() {
		super();
		try {
			authServices = new AuthServices(new AuthDAO());
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher = null;
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		if (!ValidateNormalData.isValid(userName, password)) {
			// dispatcher = request.getRequestDispatcher("//");
			// dispatcher.forward(request, response);
			out.print("Error  ");
		} else {
			User user = new User();
			user.setUsename(userName);
			user.setPassword(password);
			if (authServices.autheticateUser(user)) {
				//out.print("Authenticated");
				dispatcher = request.getRequestDispatcher("DashBoardview.jsp");
				request.setAttribute("user", user.getUsename());
				dispatcher.forward(request, response);
			} else
				out.print("User Does not exist ");

		}
	}

}

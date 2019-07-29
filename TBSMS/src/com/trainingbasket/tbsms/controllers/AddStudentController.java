package com.trainingbasket.tbsms.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.trainingbasket.tbsms.beans.Student;

/**
 * Servlet implementation class AddStudentController
 */
@WebServlet("/addStudent.do")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Set<Student> studentList = new HashSet<Student>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("AddStudent.jsp");
		List<String> errMsg = new ArrayList<String>();
		try {
			request.setAttribute("errorMsg", errMsg);
			Student student = ValidateParams(request, response, errMsg);
			if (student != null) {
				saveToDb(student);
			} else {
			errMsg.add("There was something wrong in parsing the data Please try again");
			}
		}catch (NumberFormatException e) {
		errMsg.add(e.getMessage()+"One of the value was not in a valid format");
		}
		catch (Exception e) {
			errMsg.add(e.getMessage());
		}
		dispatcher.forward(request, response);
	}

	private void saveToDb( Student student) throws SQLException {
//		Connection connection = (Connection) getServletContext().getAttribute("DbConnection");
//		PreparedStatement preparedStatement = connection
//				.prepareStatement("INSERT INTO sem1pro.studentn (Name,Age,ContactNumber) values (?,?,?)");
//		preparedStatement.setString(1, student.getName());
//		preparedStatement.setInt(2, student.getAge());
//		preparedStatement.setString(3, student.getContactNumber());
//		System.out.println(preparedStatement.executeLargeUpdate());
	}

	private Student ValidateParams(HttpServletRequest request, HttpServletResponse response, List<String> errMsg) {
		Student student = null;
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String conatcNumber = request.getParameter("contactNumber");

		if (name.trim().equals("")) {
			errMsg.add("The name cannot be left blank");
		}
		if (age < 18) {
			errMsg.add("The age cannot be less than 18");
		}
		if (conatcNumber.trim().equals("")) {
			errMsg.add("Contact Number can not be left blank");
		}
		if (conatcNumber.length() < 10) {
			errMsg.add("Contact Number is Invalid ( " + conatcNumber + ")Please Correct it ");
		}
		if (errMsg.isEmpty()) {
			student = new Student();
			student.setName(name);
			//student.setAge(age);
			student.setContactNumber(conatcNumber);
		}
		return student;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}

package com.trainingbasket.tbsms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.sun.corba.se.impl.protocol.INSServerRequestDispatcher;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.trainingbasket.tbsms.beans.Course;
import com.trainingbasket.tbsms.utils.ConnectionUtils;

public class CourseDAO implements ICourseDAO {
	Connection connection = null;

	public CourseDAO(Connection connection) {
		this.connection = connection;
	}

	@Override
	public Set<Course> getAllCources() throws SQLException {
		// List<Course> courses = new ArrayList<Course>();
		Set<Course> courses = new HashSet<Course>();
		Statement statement = connection.createStatement();
		String sql = "Select * from course";
		ResultSet resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
			Course course = new Course();
			course.setIdCourse(resultSet.getInt("idCourse"));
			course.setDecription(resultSet.getString("decription"));
			course.setDuration(resultSet.getString("duration"));
			course.setName("name");
			course.setPrerequisites("prerequisites");
			courses.add(course);
		}
		return courses;
	}

	@Override
	public boolean insertCourse(Course course) throws SQLException {
		String sql = "INSERT INTO studentdb.course ( name,duration,decription,prerequisites) VALUES (?,?,?,?)";
		PreparedStatement insertCourseStatement = connection.prepareStatement(sql);
		insertCourseStatement.setString(1, course.getName());
		insertCourseStatement.setString(2, course.getDuration());
		insertCourseStatement.setString(3, course.getDecription());
		insertCourseStatement.setString(4, course.getPrerequisites());
		int count = insertCourseStatement.executeUpdate();
		if (count != 1) {
			return false;
		}
		return true;
	}

	@Override
	public boolean updateCourse(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCourse(int id) throws SQLException {
		String sql = "delete  from studentdb.course where idCourse = ?";
		PreparedStatement deleteCourseStatement = connection.prepareStatement(sql);
		deleteCourseStatement.setInt(1, id);
		return deleteCourseStatement.execute();
	}

	public static void main(String[] args) {
		try {
			CourseDAO courseDAO = new CourseDAO(ConnectionUtils.getConnection());
			Course course = new Course();
			course.setName("Python Full Stack");
			course.setDecription("Entire Python  development");
			course.setDuration("290 day");
			course.setPrerequisites("PLT Flowchart c and c++");
			System.out.println( courseDAO.insertCourse(course));

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

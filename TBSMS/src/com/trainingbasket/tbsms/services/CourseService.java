package com.trainingbasket.tbsms.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.trainingbasket.tbsms.beans.Course;
import com.trainingbasket.tbsms.utils.ConnectionUtils;

public class CourseService {

	Connection connection;

	public CourseService(Connection connection) {
		this.connection = connection;
	}

	public List<Course> getAllCourse() throws SQLException {
		List<Course> courses = new ArrayList<Course>();
		Statement  statement = connection.createStatement();
		ResultSet resultSet= statement.executeQuery("select * from sem1pro.course");
		while(resultSet.next()) {
			Course course = new Course();
			course.setIdCourse(resultSet.getInt("idCourse"));
			course.setDecription(resultSet.getString("decription"));
			course.setDuration(resultSet.getString("duration"));
			course.setName(resultSet.getString("name"));
			course.setPrerequisites(resultSet.getString("prerequisites"));
			courses.add(course);
		}
		return courses;
	}

	public Course getCourseById(int id) throws SQLException {
		Course course = new Course();
		Statement  statement = connection.createStatement();
		ResultSet resultSet= statement.executeQuery("select * FROM sem1pro.course where idCourse='"+id+"';");
		while(resultSet.next()) {
			
			course.setIdCourse(resultSet.getInt("idCourse"));
			course.setDecription(resultSet.getString("decription"));
			course.setDuration(resultSet.getString("duration"));
			course.setName(resultSet.getString("name"));
			course.setPrerequisites(resultSet.getString("prerequisites"));
			
		}
		return course;
	}
	
//	public static void main(String[] args) {
//		try {
//			CourseService courseService = new CourseService(ConnectionUtils.getConnection());
//			  courseService.getAllCourse().forEach(System.out::println);
//		
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
}






package com.trainingbasket.tbsms.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.trainingbasket.tbsms.beans.Course;
import com.trainingbasket.tbsms.dao.CourseDAO;
import com.trainingbasket.tbsms.dao.ICourseDAO;
import com.trainingbasket.tbsms.utils.ConnectionUtils;

public class CourseService {

	Connection connection;
	ICourseDAO courseDAO;
	public CourseService(Connection connection) {
		this.connection = connection;
		this.courseDAO = new CourseDAO(this.connection);
	}

	public Set<Course> getAllCourse() throws SQLException {
		return courseDAO.getAllCources();
	}

	public Course getCourseById(int id) throws SQLException {
		Set<Course> courses= courseDAO.getAllCources();
		Course coursetobeReturned=null;
		for (Course course : courses) {
			if (course.getIdCourse()==id) {
				coursetobeReturned = course;
			}
		}
		return coursetobeReturned;
	}
	
	public static void main(String[] args) {
		
		try {
			CourseService courseService = new CourseService(ConnectionUtils.getConnection());
			Course course= courseService.getCourseById(3);
		if (course!=null) {
			System.out.print(course.getIdCourse());
			System.out.print(course.getDecription());
			System.out.print(course.getDuration());
			System.out.print(course.getName());
			System.out.print(course.getPrerequisites());
		}
		else {
			System.out.println("Sorry");
		}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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






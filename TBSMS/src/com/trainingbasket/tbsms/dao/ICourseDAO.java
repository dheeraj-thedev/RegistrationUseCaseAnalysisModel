package com.trainingbasket.tbsms.dao;

import java.sql.SQLException;
import java.util.Set;

import com.trainingbasket.tbsms.beans.Course;

public interface ICourseDAO {

	Set<Course> getAllCources() throws SQLException;

	boolean insertCourse(Course course) throws SQLException;

	boolean updateCourse(Course course);

	boolean deleteCourse(int  id) throws SQLException;

}

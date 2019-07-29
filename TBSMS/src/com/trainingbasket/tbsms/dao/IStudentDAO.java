package com.trainingbasket.tbsms.dao;

import java.sql.SQLException;
import java.util.Set;

import com.trainingbasket.tbsms.beans.Course;
import com.trainingbasket.tbsms.beans.Student;

public interface IStudentDAO {
	Set<Student> getAllStudents() throws SQLException;

	boolean insertStudent(Student student) throws SQLException;

	boolean updateStudent(Student student);

	boolean deleteStudent(int  id) throws SQLException;
}

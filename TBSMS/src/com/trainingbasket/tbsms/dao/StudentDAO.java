package com.trainingbasket.tbsms.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Set;

import com.trainingbasket.tbsms.beans.Student;

public class StudentDAO implements IStudentDAO {

	Connection connection;

	public StudentDAO(Connection connection) {
		this.connection = connection;
	}

	@Override
	public Set<Student> getAllStudents() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertStudent(Student student) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateStudent(Student student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteStudent(int id) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

}

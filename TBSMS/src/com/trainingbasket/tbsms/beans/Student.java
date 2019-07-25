package com.trainingbasket.tbsms.beans;

public class Student {

	int id;
	String name;
	int age;
	String contactNumber;
	static int tempId;

	public Student() {
	
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public int getId() {
		return id;
	}

}

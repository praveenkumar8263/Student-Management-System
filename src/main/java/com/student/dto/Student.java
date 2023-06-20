package com.student.dto;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Student 
{
	@javax.persistence.Id
	private int id;
	private String name;
	private String college;
	private String gender;

	public int getId() {
		return id;
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
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}

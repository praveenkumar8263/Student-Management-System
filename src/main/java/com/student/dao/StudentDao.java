package com.student.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.mysql.cj.Query;
import com.student.config.StudentConfig;
import com.student.dto.Student;

@Repository      //userd to connected to database
public class StudentDao {
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("gajanand");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();

	public void insertStudentData(Student student) 
	{
		entityTransaction.begin();
		entityManager.persist(student);
		entityTransaction.commit();
	}

	public void updateStudentData(Student student)
	{
		entityTransaction.begin();
		/* entityManager.find(null, student); */
		entityManager.merge(student);
		entityTransaction.commit();
	}

	public Student getStudentId(int studentId) 
	{
		return entityManager.find(Student.class, studentId);
	}
	
	public void deleteStudentData(Student student)
	{
		entityTransaction.begin();
		entityManager.remove(student);
		entityTransaction.commit();
	}
	public List<Student>  getAllStudents() {
	     javax.persistence.Query query=  entityManager.createQuery("select s from Student s");
		List<Student> students=query.getResultList();
	    return students;
	}
}

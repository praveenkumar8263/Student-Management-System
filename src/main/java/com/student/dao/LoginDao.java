package com.student.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import com.student.dto.Login;

public class LoginDao {
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("gajanand");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();

	public void insertStudentData(Login login) 
	{
		entityTransaction.begin();
		entityManager.persist(login);
		entityTransaction.commit();
	}


}

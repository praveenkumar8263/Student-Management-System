package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.student.dao.LoginDao;
import com.student.dao.StudentDao;
import com.student.dto.Login;
import com.student.dto.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentDao studentDao;

	@Autowired
	private LoginDao loginDao;

	@RequestMapping("/")
	public ModelAndView homePage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("loginhome.jsp");
		return modelAndView;
	}

	@RequestMapping("/register")
	public ModelAndView registerPage(@ModelAttribute Login login) {

		List<Login> listlogin = loginDao.getAllLogins();
		ModelAndView modelAndView = new ModelAndView();
		for (Login login2 : listlogin) {

			if (login.getEmail().equals(login2.getEmail())) {
				modelAndView.addObject("student", new Student());
				modelAndView.setViewName("error.jsp");
				return modelAndView;
			}
		}
		loginDao.insertStudentData(login);
		modelAndView.addObject("student", new Student());
		modelAndView.setViewName("register.jsp");
		return modelAndView;
	}

	@RequestMapping("/save")
	public ModelAndView saveStudent(@ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView();
		studentDao.insertStudentData(student);
		modelAndView.setViewName("loginhome.jsp");
		modelAndView.addObject("nullLogin", new Login());
		return modelAndView;
	}

	@RequestMapping("/view")
	public ModelAndView findAllStudents() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("view.jsp");
		modelAndView.addObject("students", studentDao.getAllStudents());
		return modelAndView;
	}

	@RequestMapping("/updateStudentData")
	public ModelAndView updateStudentData(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("update.jsp");
		modelAndView.addObject("student", studentDao.getStudentId(id));
		return modelAndView;
	}

	@RequestMapping("/saveUpdateStudent")
	public ModelAndView saveUpdateStudent(@ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView();
		studentDao.updateStudentData(student);
		modelAndView.setViewName("view.jsp");

		modelAndView.addObject("students", studentDao.getAllStudents());
		return modelAndView;
	}

	@RequestMapping("/deleteStudentData")
	public ModelAndView deleteStudentData(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		Student student = studentDao.getStudentId(id);
		studentDao.deleteStudentData(student);
		modelAndView.setViewName("view.jsp");
		modelAndView.addObject("students", studentDao.getAllStudents());
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView loginUser() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home.jsp");
		modelAndView.addObject("nullLogin", new Login());
		return modelAndView;
	}
}

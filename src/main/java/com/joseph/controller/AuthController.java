package com.joseph.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.joseph.model.Student;
import com.joseph.service.StudentService;

@Controller
public class AuthController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/login")
    public String setupForm(Map<String, Object> map){
	System.out.println("yes");
	Student student = new Student();
	map.put("student", student);
	map.put("studentList", studentService.getAllStudent());
	return "signin";
    }
    
    @RequestMapping(value="/login.do", method=RequestMethod.POST)
    public String doActions(@ModelAttribute Student student, BindingResult result, @RequestParam String action, Map<String, Object> map, @CookieValue(value = "hitCounter", defaultValue = "0") 
    		String studentIdCookie, String nameCookie, HttpServletResponse response){

	System.out.println("login.do started");
	switch(action.toLowerCase()){
	case "identify":
	    System.out.println("action: " + action);

	    String studentNameForCheck = student.getName();
	    System.out.println("studentNameForCheck: " + studentNameForCheck);

	    String passwordForCheck = student.getPassword();
	    System.out.println("passwordForCheck: " + passwordForCheck);

	    List studentsList = studentService.getAllStudent();

	    for (int i = 0; i < studentsList.size(); i ++){
		Student tempStudent = (Student) studentsList.get(i);
		System.out.println("tempStudent: " + tempStudent);
		System.out.println("tempStudentName: " + tempStudent.getName());
		System.out.println("tempStudentName: " + tempStudent.getPassword());
		if (tempStudent.getName().equals(studentNameForCheck) || passwordForCheck.equals(tempStudent.getPassword())){
		    System.out.println("                           HOOORAY!!! Username is: " + tempStudent.getName() + " Password is: " + tempStudent.getPassword() + " StudentId is: " + tempStudent.getStudentId());
		    int intStudentIdCookie = tempStudent.getStudentId();
		    studentIdCookie = Integer.toString(intStudentIdCookie);		    
		    nameCookie = studentNameForCheck;
		    String authCookie = "1";
		}
	    }
	    	    
	    	final int COOKIEMAXAGE = 60*60*24;
	    
		Cookie cookiestudentIdCookie = new Cookie("studentIdCookie", studentIdCookie);
		cookiestudentIdCookie.setMaxAge(COOKIEMAXAGE);
		response.addCookie(cookiestudentIdCookie);
		
		
		Cookie cookieNameCookie = new Cookie("nameCookie", nameCookie);
		cookieNameCookie.setMaxAge(COOKIEMAXAGE);
		response.addCookie(cookieNameCookie);
		
		Cookie authCookie = new Cookie("authCookie", "1");
		authCookie.setMaxAge(COOKIEMAXAGE);
		response.addCookie(authCookie);

	    break;
	}

//	map.put("username", nameCookie);
//	map.put("nameCookie", nameCookie);

	return "redirect:/users";
    }
}

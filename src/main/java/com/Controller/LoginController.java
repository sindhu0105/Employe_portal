package com.Controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import com.DAO.EmpDAO;
import com.Model.EmpModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	String mail= req.getParameter("mail");
	String pwd = req.getParameter("password");
	
	System.out.println(mail);
	System.out.println(pwd);
	
	
	EmpDAO e = new EmpDAO();
	
	EmpModel emp = e.Authentication(mail,pwd);
	HttpSession session=req.getSession();

//	System.out.println(emp);
	if(emp!=null) {
		System.out.println("Data is affected successfully....");
		session.setAttribute("emp", emp.getEname());
		session.setAttribute("employee",emp);
		RequestDispatcher r = req.getRequestDispatcher("EmpListController");
		r.forward(req, res);
	}
	else {
		System.out.println("Something Went Wrong");
		RequestDispatcher r = req.getRequestDispatcher("Login.jsp");
		r.include(req, res);
		
	}
	}
}

package com.Controller;

import java.io.IOException;

import com.DAO.EmpDAO;
import com.Model.EmpModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/register")
public class EmpController extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Helloooooo");
		int eid =  Integer.parseInt(req.getParameter("eid"));   
		String ename = req.getParameter("ename");
		String mail = req.getParameter("mail");
		String password = req.getParameter("password");
		System.out.println(eid);
		System.out.println(ename);
		System.out.println(mail);
		System.out.println(password);
		
		
		EmpModel em = new EmpModel();
		em.setEid(eid);
		em.setEname(ename);
		em.setMail(mail);
		em.setPassword(password);
		
		
		
		EmpDAO ed = new EmpDAO();
		String status = ed.insertEmp(em);
		if(status.equals("Success")) {
			System.out.println("Data Inserted Successfully......");
			req.setAttribute("ename", ename);
			RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");  
		    rd.forward(req, res);
		}
		else {
			System.out.println("Something Went Wrong......");
			RequestDispatcher rd=req.getRequestDispatcher("index.html");  
			rd.include(req, res);
			
		}
		
	}
	
}

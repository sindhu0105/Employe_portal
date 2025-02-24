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

@WebServlet("/showemployedetails")
public class ShowProfile extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		EmpModel emp = (EmpModel) session.getAttribute("employee");
		EmpDAO dao = new EmpDAO();
		EmpModel employe = dao.getEmpById(emp.getEid());
		System.out.println(employe+"==========");
		req.setAttribute("employedetails", employe);
		RequestDispatcher rd = req.getRequestDispatcher("Showemployecard.jsp");
		rd.forward(req, resp);
	}
}

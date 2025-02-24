package com.Controller;

import java.io.IOException;
import java.util.List;

import com.DAO.EmpDAO;
import com.Model.EmpModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteEmpServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt( req.getParameter("id"));
		System.out.println(id+"-------------------------");
		
		EmpDAO d = new EmpDAO();
		String del = d.delete(id);
		
		System.out.println(del);
		List<EmpModel> allemp = d.getAllEmp();
		req.setAttribute("allemp", allemp);
		RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		rd.forward(req, resp);
		
	}
}

package com.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.DAO.EmpDAO;
import com.Model.EmpModel;

@WebServlet("/EmpListController")
public class EmpListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("--------------EmpListController-----------------");
		EmpDAO ed = new EmpDAO();
		List<EmpModel> allemp = ed.getAllEmp();
		System.out.println(allemp);
		request.setAttribute("allemp", allemp);
		RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
		rd.forward(request, response);
	}

}

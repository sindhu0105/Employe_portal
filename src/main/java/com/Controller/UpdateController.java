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

@WebServlet("/update")
public class UpdateController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("UpdateController............");
		int updt = Integer.parseInt(req.getParameter("id"));

		EmpDAO dao = new EmpDAO();
		EmpModel m = dao.getEmpById(updt);
		System.out.println(m);
		req.setAttribute("details", m);
		RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int eid = Integer.parseInt(req.getParameter("eid"));
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
		 status = ed.updateEmpDetails(em);
		List<EmpModel> allemp = ed.getAllEmp();
		System.out.println(allemp);
		req.setAttribute("allemp", allemp);
		RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		rd.forward(req, resp);
	}
}

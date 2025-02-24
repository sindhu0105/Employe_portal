package com.Controller;

import java.io.IOException;

import com.DAO.EmpDAO;
import com.Model.EmpModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve updated details from form
        String ename = request.getParameter("ename");
        String mail = request.getParameter("mail");
        String password = request.getParameter("password");

        // Retrieve session to get current user ID
        HttpSession session = request.getSession();
        EmpModel emp = (EmpModel) session.getAttribute("employee");

        if (emp != null) {
            // Update employee details
            emp.setEname(ename);
            emp.setMail(mail);
            emp.setPassword(password);

            // Call DAO to update the database
            EmpDAO dao = new EmpDAO();
            boolean updateSuccess = dao.updateEmpDetails(emp);

            if (updateSuccess) {
                session.setAttribute("employee", emp); // Update session with new details
                response.sendRedirect("showemployedetails"); // Redirect to profile page
            } else {
                request.setAttribute("errorMessage", "Failed to update profile. Try again!");
                request.getRequestDispatcher("Edituserdetails.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login if session expired
        }
    }
}

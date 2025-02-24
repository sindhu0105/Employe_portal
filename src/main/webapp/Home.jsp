<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Model.EmpModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS for Sky Blue Theme -->
<style>
.upbtn{
        background-color: #87CEEB; /* Sky Blue */

}
    body {
        background-color: #87CEEB; /* Sky Blue */
        color: #333;
        font-family: Arial, sans-serif;
    }
    .container {
        margin-top: 50px;
    }
    .table {
        background-color: #e0f7fa; /* Light Blue */
        border-radius: 10px;
    }
    .table thead {
        background-color: #007bb5; /* Darker Sky Blue */
        color: white;
    }
    .btn-warning {
        background-color: #ffa726;
        border: none;
    }
    .btn-danger {
        background-color: #d32f2f;
        border: none;
    }
    .navbar {
        background-color: #007bb5 !important;
    }
    .navbar-brand, .nav-link {
        color: white !important;
    }
    .card {
        background: white;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }
    .center{
    	text-align : center;
    }
    .upbtn {
    background-color: #87CEEB !important;
        color: white !important;
    border: none !important;
}
    
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<!-- Navbar -->
<!-- <nav class="navbar navbar-expand-lg navbar-dark"> -->
<!--     <a class="navbar-brand" href="#">Employee Management</a> -->
<!-- </nav> -->


<!-- Employee Table -->
<div class="container">

    <h2 class="center">Welcome <%= session.getAttribute("emp") %></h2>

    <div class="row justify-content-center">
        <div class="col-md-10">
            <% 
                List<EmpModel> employees = (List<EmpModel>) request.getAttribute("allemp");
                if (employees == null || employees.isEmpty()) {
            %>
                <div class='alert alert-warning text-center'>No employees found!</div>
            <% } else { %>
                <div class="card mt-4">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (EmpModel employee : employees) { %>
                            <tr>
                                <td><%= employee.getEid() %></td>
                                <td><%= employee.getEname() %></td>
                                <td><%= employee.getMail() %></td>
                                <td><%= employee.getPassword() %></td>
                                <td>
                                    <a href="update?id=<%= employee.getEid() %>" class="btn upbtn btn-sm">Update</a>
                                    <a href="delete?id=<%= employee.getEid() %>" class="btn btn-danger btn-sm">Delete</a>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            <% } %>
        </div>
    </div>
</div>

</body>
</html>

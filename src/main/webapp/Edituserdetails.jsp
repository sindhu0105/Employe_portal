<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.Model.EmpModel" %>
<%
    EmpModel employedetails = (EmpModel) request.getAttribute("employedetails");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <!-- Updated FontAwesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            margin: 0;
        }
        .card {
            background: #fff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .input-group {
            position: relative;
            margin: 15px 0;
            display: flex;
            align-items: center;
            border: 1px solid #ddd;
            padding: 12px;
            border-radius: 12px;
            background: #f9f9f9;
        }
        .input-group i {
            color: #ff4757;
            margin-right: 12px;
        }
        .input-group input {
            border: none;
            outline: none;
            flex: 1;
            padding: 10px;
            font-size: 16px;
            background: none;
        }
        /* Eye Icon Properly Positioned */
        .input-group .toggle-password {
            position: absolute;
            right: 15px;
            cursor: pointer;
            color: #555;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn {
            padding: 12px 30px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 18px;
            transition: 0.3s;
        }
        .submit-btn {
            background: #ff4757;
            color: white;
        }
        .submit-btn:hover {
            background: #e84118;
        }
        .back-btn {
            background: #57606f;
            color: white;
        }
        .back-btn:hover {
            background: #2f3542;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Edit Your Profile</h2>
        <form action="updateProfileServlet" method="post">
            <div class="input-group">
                <i class="fas fa-user"></i>
                <input type="text" name="ename" value="<%= employedetails.getEname() %>" placeholder="Enter Name">
            </div>
            <div class="input-group">
                <i class="fas fa-envelope"></i>
                <input type="email" name="mail" value="<%= employedetails.getMail() %>" placeholder="Enter Email">
            </div>
            <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" value="<%= employedetails.getPassword() %>" placeholder="Enter Password">
                <i class="fas fa-eye toggle-password" id="togglePassword"></i>  <!-- Fixed Eye Icon -->
            </div>
            <div class="buttons">
                <button type="submit" class="btn submit-btn">Update</button>
                <a href="showemployedetails" class="btn back-btn">Back</a>
            </div>
        </form>
    </div>

    <script>
        document.getElementById("togglePassword").addEventListener("click", function() {
            var passwordField = document.getElementById("password");
            var icon = this;
            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash"); // Eye with Slash
            } else {
                passwordField.type = "password";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye"); // Normal Eye
            }
        });
    </script>
</body>
</html>

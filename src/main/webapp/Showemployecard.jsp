<%@ page import="com.Model.EmpModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    EmpModel employee = (EmpModel) request.getAttribute("employedetails");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #ffdde1, #ee9ca7);
        }
        .card {
            width: 420px;
            min-height: 400px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .card h2 {
            font-size: 22px;
            color: #333;
            margin-bottom: 15px;
        }
        .details {
            text-align: left;
            margin-top: 15px;
            padding: 0 10px;
        }
        .details div {
            font-size: 16px;
            color: #555;
            padding: 12px;
            display: flex;
            align-items: center;
            border-bottom: 3px solid #ff7f50;
            transition: all 0.3s ease-in-out;
        }
        .details div:hover {
            background: rgba(255, 127, 80, 0.1);
            transform: scale(1.02);
        }
        .details div i {
            color: #ff7f50;
            font-size: 20px;
            margin-right: 10px;
        }
        .field-text {
            font-weight: bold;
            color: #333;
        }
        .password-container {
            display: flex;
            align-items: center;
            width: 100%;
        }
        .password-container input {
            border: none;
            outline: none;
            font-size: 16px;
            background: transparent;
            color: #333;
            font-weight: bold;
        }
        .password-container i {
            cursor: pointer;
            margin-left: 10px;
            transition: color 0.3s ease;
        }
        .password-container i:hover {
            color: #e65c32;
        }
        .btn-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 12px;
        }
        .btn {
            font-size: 14px;
            text-decoration: none;
            border: none;
            padding: 10px 18px;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        .edit-btn {
            background: #ff7f50;
            color: white;
        }
        .edit-btn:hover {
            background: #e65c32;
            transform: scale(1.05);
        }
        .back-btn {
            background: #444;
            color: white;
        }
        .back-btn:hover {
            background: #222;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="card">
        <h2><i class="fa-solid fa-user"></i> <%= employee.getEname() %></h2>

        <div class="details">
            <div>
                <i class="fa-solid fa-id-badge"></i>
                <span class="field-text"><%= employee.getEid() %></span>
            </div>
            <div>
                <i class="fa-solid fa-envelope"></i>
                <span class="field-text"><%= employee.getMail() %></span>
            </div>
            <div class="password-container">
                <i class="fa-solid fa-lock"></i>
                <input type="password" id="passwordField" value="<%= employee.getPassword() %>" readonly>
                <i class="fa-solid fa-eye-slash" id="togglePassword"></i>
            </div>
        </div>

        <div class="btn-container">
            <a href="getEmployedetails" class="btn edit-btn"><i class="fa-solid fa-pen"></i> Edit</a>
            <a href="EmpListController" class="btn back-btn"><i class="fa-solid fa-arrow-left"></i> Back</a>
        </div>
    </div>

    <script>
        const passwordField = document.getElementById("passwordField");
        const togglePassword = document.getElementById("togglePassword");

        togglePassword.addEventListener("click", function() {
            if (passwordField.type === "password") {
                passwordField.type = "text";
                togglePassword.classList.remove("fa-eye-slash");
                togglePassword.classList.add("fa-eye");
            } else {
                passwordField.type = "password";
                togglePassword.classList.remove("fa-eye");
                togglePassword.classList.add("fa-eye-slash");
            }
        });
    </script>
</body>
</html>

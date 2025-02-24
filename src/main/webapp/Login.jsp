<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login JSP page </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom, #a1c4fd, #c2e9fb);
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 500px;
            margin-top: 100px;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .form-control {
            border-radius: 5px;
        }
        .form-label {
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
	<h1>JSP Page</h1>
	
	<div class="container">
        <h2>Employee Login</h2>
        <%= request.getAttribute("ename")%>
        <form action="Login" method="get">
            <div class="mb-3">
                <label for="mail" class="form-label">Email<span class="text-danger">*</span></label>
                <input type="email" name="mail" id="mail" class="form-control" placeholder="Enter your Email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password<span class="text-danger">*</span></label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter Your Password" required>
            </div>
            <br></br>
            <button type="submit" class="btn btn-primary w-100">Login</button>
                       if u dont have account <a href="index.jsp">register</a>
            
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
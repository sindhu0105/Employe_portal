<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: linear-gradient(to right, #ff9a9e, #fad0c4);
        font-family: 'Poppins', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        max-width: 500px;
        background: #ffffff;
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        animation: fadeIn 1s ease-in-out;
        position: relative;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.9); }
        to { opacity: 1; transform: scale(1); }
    }
    h2 {
        color: #ff758c;
        font-weight: bold;
    }
    .form-control {
        border-radius: 10px;
        padding: 12px;
        border: 2px solid #ff758c;
        transition: 0.3s ease-in-out;
    }
    .form-control:focus {
        border-color: #ff7eb3;
        box-shadow: 0 0 8px rgba(255, 120, 179, 0.5);
    }
    .btn-primary {
        background: linear-gradient(45deg, #ff758c, #ff7eb3);
        border: none;
        padding: 12px;
        border-radius: 50px;
        font-weight: bold;
        transition: all 0.3s ease-in-out;
        position: relative;
        overflow: hidden;
    }
    .btn-primary::before {
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, 0.2);
        top: 0;
        left: -100%;
        transition: 0.5s;
    }
    .btn-primary:hover::before {
        left: 100%;
    }
    .btn-primary:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 15px rgba(255, 120, 179, 0.4);
    }
    .login-btn {
        display: inline-block;
        padding: 12px 25px;
        font-size: 16px;
        font-weight: bold;
        color: #fff;
        background: linear-gradient(45deg, #ff9a9e, #fad0c4);
        border: none;
        border-radius: 50px;
        cursor: pointer;
        transition: all 0.4s ease;
        text-decoration: none;
        position: relative;
        overflow: hidden;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }
    .login-btn:hover {
        transform: scale(1.1);
        box-shadow: 0 6px 15px rgba(255, 120, 179, 0.5);
    }
    .form-group {
        position: relative;
    }
    .form-group input:focus ~ label,
    .form-group input:not(:placeholder-shown) ~ label {
        top: -12px;
        left: 10px;
        font-size: 12px;
        color: #ff758c;
        transition: 0.3s;
    }
    label {
        position: absolute;
        top: 50%;
        left: 15px;
        transform: translateY(-50%);
        color: #aaa;
        transition: 0.3s;
        pointer-events: none;
        font-size: 14px;
    }
</style>
</head>
<body>
   <div class="container">
        <h2>Employee Registration</h2>
        <form id="registrationForm" action="register" method="post">
            <div class="mb-3 form-group">
                <input type="text" name="eid" id="eid" class="form-control" placeholder=" " required>
                <label for="eid">Employee ID</label>
            </div>
            <div class="mb-3 form-group">
                <input type="text" name="ename" id="ename" class="form-control" placeholder=" " required>
                <label for="ename">Employee Name</label>
            </div>
            <div class="mb-3 form-group">
                <input type="email" name="mail" id="mail" class="form-control" placeholder=" " required>
                <label for="mail">Email</label>
            </div>
            <div class="mb-3 form-group">
                <input type="password" name="password" id="password" class="form-control" placeholder=" " required>
                <label for="password">Password</label>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
            <div class="mt-3">
                <b>Already have an account?</b> <a href="Login.jsp" class="login-btn">Login</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

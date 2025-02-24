<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.Model.EmpModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
          body {
            background: linear-gradient(to bottom, #a1c4fd, #c2e9fb);
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
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
	<% EmpModel e= (EmpModel) request.getAttribute("details"); %>
   <div class="container">
        <h2>Employee Update Form</h2>
        <form action="update" method="post">
            <div class="mb-3">
            
                <label for="eid" class="form-label">Employee ID<span class="text-danger">*</span></label>
                <input type="text" name="eid" id="eid" class="form-control" value="<%= e.getEid() %>" required>
                
            </div>
            <div class="mb-3">
            
                <label for="ename" class="form-label">Employee Name<span class="text-danger">*</span></label>
                <input type="text" name="ename" id="ename" class="form-control" value="<%= e.getEname() %>" required>
                
            </div>
            <div class="mb-3">
            
                <label for="mail" class="form-label">Email<span class="text-danger">*</span></label>
                <input type="email" name="mail" id="mail" class="form-control" value="<%= e.getMail() %>" required>
               
            </div>
            <div class="mb-3">
            
                <label for="password" class="form-label">Password<span class="text-danger">*</span></label>
                <input type="password" name="password" id="password" class="form-control" value="<%= e.getPassword() %>" required>
                
            </div>
            <button type="submit" class="btn btn-primary w-100">Update</button>
           
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
 </html>
<!-- <form action="register"method="post"> -->

<!-- <input type="text" name="eid" id="eid" placeholder="Enter Employee id" required><br> -->
<!-- <label id="eidinfo"></label><br> -->
<!-- <input type="text" name="ename" id="ename" placeholder="Enter Employee Name" required><br> -->
<!-- <label id="enameinfo"></label><br> -->
<!-- <input type="email" name="mail" id="mail" placeholder="Enter your gmail" required><br> -->
<!-- <label id="mailinfo"></label><br> -->
<!-- <input type="password" name="password" id="password" placeholder="Enter Your Password" required><br> -->
<!-- <label id="pwinfo"></label><br> -->

<!-- <button type="submit">Submit</button> -->
<!-- </form> -->


<!-- </body> -->
<!-- <script> -->
<!-- // function result(){ -->
<!-- // 	let eid =document.getElementById("eid").value; -->
<!-- // 	if(eid==""){ -->
<!-- // 		document.getElementById("eidinfo").innerHTML="eid is mandatory!!".style.color="red"; -->
<!-- // 		return false; -->
<!-- // 	} -->
<!-- // 	else{ -->
<!-- // 		return true; -->
<!-- // 	} -->
<!-- // 	let ename =document.getElementById("ename").value; -->
<!-- // 	if(ename==""){ -->
<!-- // 		document.getElementById("enameinfo").innerHTML="ename is mandatory!!".style.color="red"; -->
<!-- // 		return false; -->
<!-- // 	} -->
<!-- // 	else{ -->
<!-- // 		return true; -->
<!-- // 	} -->
<!-- // 	let mail =document.getElementById("mail").value; -->
<!-- // 	if(mail==""){ -->
<!-- // 		document.getElementById("mailinfo").innerHTML="mail is mandatory!!".style.color="red"; -->
<!-- // 		return false; -->
<!-- // 	} -->
<!-- // 	else{ -->
<!-- // 		return true; -->
<!-- // 	} -->
<!-- // 	let password =document.getElementById("password").value; -->
<!-- // 	if(password==""){ -->
<!-- // 		document.getElementById("pwinfo").innerHTML="password is mandatory!!".style.color="red"; -->
<!-- // 		return false; -->
<!-- // 	} -->
<!-- // 	else{ -->
<!-- // 		return true; -->
<!-- // 	} -->
<!-- // } -->
<!-- <!-- </script> -->
    
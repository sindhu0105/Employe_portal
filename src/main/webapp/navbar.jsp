<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" crossorigin="anonymous"></script>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #001f3f; /* Dark Blue */
            padding: 10px 20px;
        }
        .navbar .navbar-brand {
            color: white !important;
            font-size: 1.5rem;
            font-weight: bold;
        }
        .nav-right {
            display: flex;
            align-items: center;
        }
        .profile-icon {
            background-color: #87CEEB; /* Sky Blue */
            padding: 8px 15px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
            margin-right: 15px;
            font-weight: bold;
            display: flex;
            align-items: center;
        }
        .profile-icon i {
            margin-right: 5px;
        }
        .logout-btn {
            background-color: #90EE90; /* Light Green */
            padding: 8px 15px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            cursor: pointer;
        }
        .profile-icon:hover, .logout-btn:hover {
            opacity: 0.8;
        }
    </style>
    <script>
        function confirmLogout(event) {
            event.preventDefault(); // Prevent default action
            let userResponse = confirm("Are you sure you want to log out?");
            if (userResponse) {
                window.location.href = "logout"; // Redirect to logout page
            }
        }
    </script>
</head>
<body>
    <nav class="navbar d-flex justify-content-between">
        <a class="navbar-brand" href="#">Employee Management</a>
        <div class="nav-right">
            <a href="showemployedetails" class="profile-icon"><i class="fa-solid fa-user"></i> Profile</a>
            <a href="#" class="logout-btn" onclick="confirmLogout(event)">Logout</a>
        </div>
    </nav>
</body>
</html>

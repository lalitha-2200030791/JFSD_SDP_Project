<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light background for contrast */
        }

        /* Navbar styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #ffffff;
            padding: 1rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }

        .navbar .logo img {
            max-height: 60px;
            max-width: 60px;
            height: auto;
            width: auto;
        }

        .navbar nav {
            display: flex;
            align-items: center;
        }

        .navbar a {
            text-decoration: none;
            color: #000;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            margin-left: 10px;
        }

        .navbar a:hover {
            background-color: #f0f0f0; /* Highlight on hover */
        }

        /* Dashboard styles */
        .dashboard {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 80px; /* Space for the fixed navbar */
            padding: 20px;
        }

        .dashboard h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 10px;
            width: 300px;
            text-align: center;
        }

        .card h2 {
            margin: 0 0 10px;
            color: #6a11cb; /* Color for headings */
        }

        .card a {
            display: inline-block;
            text-decoration: none;
            color: #ffffff;
            background: linear-gradient(90deg, #ff7e5f, #feb47b); /* Button gradient */
            padding: 10px 20px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .card a:hover {
            background: linear-gradient(90deg, #feb47b, #ff7e5f); /* Inverted button gradient on hover */
        }

        /* Responsive design */
        @media (min-width: 600px) {
            .dashboard {
                flex-direction: row;
                flex-wrap: wrap;
                justify-content: center;
            }

            .card {
                margin: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <a href="index.jsp">
                <img src="images/logo.jpg" alt="Logo"> <!-- Update with your logo file path -->
            </a>
        </div>
        <nav>
            <a href="adminDashboard.jsp">Dashboard</a>
            <a href="logout.jsp">Logout</a>
        </nav>
    </div>

    <div class="dashboard">
        <h1>Admin Dashboard</h1>
        <div class="card">
            <h2>Manage Users</h2>
            <a href="manageUsers.jsp">Go to Manage Users</a>
        </div>
        <div class="card">
            <h2>Manage Gallery</h2>
            <a href="manageGallery.jsp">Go to Manage Gallery</a>
        </div>
        <div class="card">
            <h2>Manage Blogs</h2>
            <a href="manageBlogs.jsp">Go to Manage Blogs</a>
        </div>
    </div>
</body>
</html>

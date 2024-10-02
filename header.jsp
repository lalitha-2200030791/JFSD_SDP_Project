<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <style>
        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #ffffff;
            padding: 1rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index: 1;
        }

        .logo img {
    max-height: 60px; /* This will set a maximum height */
    max-width: 60px;  /* This will set a maximum width */
    height: auto; /* Maintain aspect ratio */
    width: auto;  /* Maintain aspect ratio */
}

        .search-bar {
            margin-left: 1rem;
            flex-grow: 1;
        }

        .search-bar input[type="text"] {
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            max-width: 600px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            font-family: 'Poppins', sans-serif;
        }

        nav ul li {
            margin: 0 1rem;
            position: relative;
        }

        nav ul li a {
            color: #000000;
            text-decoration: none;
            font-size: 1.2rem;
            padding: 5px 10px;
            transition: color 0.3s ease, background-color 0.3s ease;
        }

        nav ul li a:hover {
            color: #ffffff;
            background-color: #c0392b;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
         <a href="index.jsp">
            <img src="images/logo.jpg" alt="Logo"> <!-- Update with your logo file path -->
        </div>
        </a>
        <div class="search-bar">
            <input type="text" placeholder="Search...">
        </div>
        <nav>
            <ul>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="monuments.jsp">Monuments</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="blogs.jsp">Blogs</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
                <li><a href="virtual-tours.jsp">Virtual Tours</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>

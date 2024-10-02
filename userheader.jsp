<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Header</title>
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

        nav {
            position: relative; /* To position dropdown */
            margin-left: 1rem; /* Add some space from the search bar */
        }

        .dropdown {
            position: relative;
            display: inline-block; /* Keep inline with buttons */
        }

        .dropdown-button {
            background: linear-gradient(90deg, #ff7e5f, #feb47b); /* Gradient color */
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: #ffffff;
            padding: 10px 20px; /* Wider padding for bigger button */
            border-radius: 5px;
            margin-right: 10px; /* Space between menu and logout button */
            width: auto; /* Adjust width */
        }

        .write-blog-button {
            background: linear-gradient(90deg, #ff7e5f, #feb47b); /* Same gradient as dropdown */
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: #ffffff;
            padding: 10px 20px; /* Wider padding for bigger button */
            border-radius: 5px;
            margin-right: 10px; /* Space between write blog and next button */
        }

        .logout-button {
            background: linear-gradient(90deg, #6a11cb, #2575fc); /* Gradient color */
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: #ffffff;
            padding: 10px 20px; /* Wider padding for bigger button */
            border-radius: 5px;
            width: auto; /* Adjust width */
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #ffffff;
            min-width: 160px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: #000000;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #c0392b;
            color: #ffffff;
        }

        .dropdown:hover .dropdown-content {
            display: block; /* Show dropdown on hover */
        }

        /* Profile picture styles */
        .profile-pic {
            position: relative;
            cursor: pointer; /* Indicate that it can be interacted with */
        }

        .profile-pic img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        /* Username styles */
        .username {
            font-size: 1.2rem;
            color: #000000; /* Change color as needed */
            margin-right: 10px; /* Space between username and profile picture */
        }

        /* Container for username and profile picture */
        .user-container {
            display: flex;
            align-items: center; /* Center vertically */
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
        <div class="search-bar">
            <input type="text" placeholder="Search...">
        </div>
        <nav>
            <div class="dropdown">
                <button class="dropdown-button">Menu</button>
                <div class="dropdown-content">
                    <a href="monuments.jsp">Monuments</a>
                    <a href="gallery.jsp">Gallery</a>
                    <a href="blogs.jsp">Blogs</a>
                    <a href="contact.jsp">Contact Us</a>
                    <a href="virtual-tours.jsp">Virtual Tours</a>
                </div>
            </div>
            <a href="write-blog.jsp" class="write-blog-button">✍️ Write a Blog</a> <!-- Write Blog button -->
            <a href="logout.jsp" class="logout-button">Logout</a> <!-- Logout button -->
        </nav>
        <div class="user-container">
            <div class="username" id="usernameDisplay"></div> <!-- Username displayed next to profile picture -->
            <div class="profile-pic">
                <img src="images/user.png" alt="User Profile Picture"> <!-- Update with the correct image path -->
            </div>
        </div>
    </div>

    <script>
        // Retrieve username from local storage
        const username = localStorage.getItem('username');
        document.getElementById('usernameDisplay').innerText = username ? username : 'Guest';
    </script>
</body>
</html>

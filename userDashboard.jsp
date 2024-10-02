<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="userheader.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            font-size: 2.5rem;
            color: #333;
        }
        .explore-btn {
            padding: 10px 20px;
            background-color: #6200EA;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 20px;
        }
        .explore-btn:hover {
            background-color: #3700B3;
        }
    </style>
</head>
<body>
    <h1>Welcome, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Guest" %>!</h1>
    <button class="explore-btn" onclick="explore()">Explore</button>

    <script>
        function explore() {
            window.location.href = 'explore.jsp'; // Redirect to explore.jsp or any other page
        }

        // Redirect to login if no username is found (user not logged in)
        if (!<%= session.getAttribute("username") != null %>) {
            window.location.href = 'login.jsp';
        }
    </script>
</body>
</html>

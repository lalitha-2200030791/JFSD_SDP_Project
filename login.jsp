<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="sdp.UserDao" %>
<%@ page import="sdp.User" %> 
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 300px;
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #6200EA;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-btn:hover {
            background-color: #3700B3;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
        .signup-link {
            margin-top: 20px;
            display: block;
            color: #6200EA;
            text-decoration: none;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <h2>Login</h2>
        <form method="post" action="login.jsp">
            <input type="text" name="username" class="input-field" placeholder="Username" required>
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" class="login-btn">Login</button>
            <div class="error-message">
               <% 
                    String errorMessage = "";
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    UserDao userDao = new UserDao(); 
                    User user = userDao.findUserByUsername(username);

                    if (user != null && user.getPassword().equals(password)) {
                        session.setAttribute("username", user.getUsername()); // Set username in session
                        // Check if the user is an admin
                        if ("admin".equals(username)) {
                            response.sendRedirect("adminDashboard.jsp"); // Redirect to admin dashboard
                        } else {
                            response.sendRedirect("userDashboard.jsp"); // Redirect to user dashboard
                        }
                    }

                    if (!errorMessage.isEmpty()) {
                %>
                    <%= errorMessage %>
                <% 
                    }
                %>     
            </div>
        </form>
        <!-- Signup link -->
        <a href="signup.jsp" class="signup-link">Not registered? Sign up</a>
        <a href="adminLogin.jsp" class="admin-link">Click here for Admin login</a>
    </div>
</body>
</html>

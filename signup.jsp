<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %> <!-- Include header.jsp -->
<%@ page import="sdp.UserManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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

        .signup-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 350px;
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

        .signup-btn {
            width: 100%;
            padding: 10px;
            background-color: #6200EA;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .signup-btn:hover {
            background-color: #3700B3;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }

        .login-link {
            margin-top: 20px;
            display: block;
            color: #6200EA;
            text-decoration: none;
        }

        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-card">
        <h2>Sign Up</h2>
        <form method="post" action="signup.jsp"> <!-- Submit to the same JSP -->
            <input type="text" name="name" class="input-field" placeholder="Full Name" required>
            <input type="email" name="email" class="input-field" placeholder="Email" required>
            <input type="text" name="username" class="input-field" placeholder="Username" required>
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" class="signup-btn">Sign Up</button>
            <div class="error-message">
                <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
            </div>
        </form>
        
        <!-- Login link -->
        <a href="login.jsp" class="login-link">Already registered? Log in</a>
    </div>

    <%
        // Processing the signup form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (name != null && email != null && username != null && password != null) {
            UserManager userManager = new UserManager();
            String message = userManager.signup(name, email, username, password);

            if (message.equals("Signup successful! Redirecting to login page...")) {
                // Redirect to login page on success
                response.sendRedirect("login.jsp");
            } else {
                // Set error message if signup fails
                request.setAttribute("errorMessage", message);
            }
        }
    %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Heritage</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Raleway, sans-serif;
            color: #ffffff;
            overflow: hidden;
        }

        /* Background Video */
        .background-video {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: 0;
            opacity: 0.7;
        }

        /* Main Section */
        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            margin-top: 4rem;
        }

        .main-content {
            position: relative;
        }

        .read-me-button {
            display: inline-block;
            background-color: #e74c3c;
            color: #ffffff;
            padding: 1rem 2rem;
            font-size: 1.5rem;
            text-decoration: none;
            border-radius: 50px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s, transform 0.3s;
        }

        .read-me-button:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }

        .read-me-button:focus {
            outline: none;
            box-shadow: 0 0 0 4px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>

    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <!-- Background Video -->
    <video class="background-video" autoplay muted loop>
        <source src="videos/v1.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Main Content -->
    <div class="main">
        <div class="main-content">
            <h1>DESI DIARIES</h1>
            <a href="read-me.jsp" class="read-me-button">Read Me</a>
        </div>
    </div>

</body>

</html>

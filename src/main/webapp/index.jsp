<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Loan Management System</title>
    <!-- Linking to external CSS -->
    <style>
        /* Body Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            color: #fff;
            overflow-x: hidden; /* Prevent horizontal scrolling */
        }

        /* Full-page background */
        .hero-image {
            background-image: url('images/background.jpeg'); /* Update path to your background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
        }

        /* Overlay effect for better readability */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent overlay */
        }

        /* Title and Subtitle Styling */
        .hero-text {
            z-index: 1;
            font-size: 3rem;
            font-weight: bold;
            letter-spacing: 2px;
            color: #fff;
            animation: fadeIn 2s ease-in-out; /* Fade-in animation for text */
        }

        .hero-subtext {
            z-index: 1;
            font-size: 1.5rem;
            margin-top: 10px;
            color: #fff;
            opacity: 0.8;
        }

        /* Button Styling */
        .btn {
            padding: 12px 30px;
            margin-top: 20px;
            font-size: 1.2rem;
            border: none;
            background-color: #28a745;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #218838;
            transform: translateY(-5px); /* Slight lift effect on hover */
        }

        /* Additional Image Styling */
        .image-section {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }

        .image-section img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        /* Features Section Styling */
        .features {
            display: flex;
            justify-content: space-around;
            margin-top: 50px;
            flex-wrap: wrap;
            padding: 0 10%;
        }

        .feature-card {
            background-color: #fff;
            color: #000;
            width: 280px;
            margin: 10px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px); /* Hover effect to lift the card */
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
        }

        .feature-card h3 {
            font-size: 1.6rem;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .feature-card p {
            font-size: 1rem;
            color: #666;
        }

        /* Fade-in Animation */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Media Queries for responsiveness */
        @media (max-width: 768px) {
            .features {
                flex-direction: column;
                align-items: center;
            }

            .feature-card {
                width: 90%;
                margin-bottom: 20px;
            }

            .image-section {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <!-- Include the navigation bar -->
    <%@ include file="mainnav.jsp" %>

    <!-- Hero Section with Background Image -->
    <div class="hero-image">
        <div class="overlay"></div>
        <div class="hero-text">
            <h1>Welcome to the Loan Management System</h1>
            <p class="hero-subtext">Streamlining Your Loan Requests and Management</p>
            <a href="aboutus.jsp" class="btn">Learn More</a>
        </div>
    </div>

    <!-- Additional Image Section -->
    <div class="image-section">
        <img src="images/download.jpeg" alt="Loan Management" /> <!-- Replace with your image path -->
    </div>

    <!-- Features Section -->
    <div class="features">
        <div class="feature-card">
            <h3>Easy Loan Requests</h3>
            <p>Submit your loan request effortlessly through our simple platform.</p>
        </div>
        <div class="feature-card">
            <h3>Real-Time Tracking</h3>
            <p>Track the status of your loan request in real-time.</p>
        </div>
        <div class="feature-card">
            <h3>Quick Approval</h3>
            <p>Get fast loan approvals to manage your finances effectively.</p>
        </div>
    </div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us - Loan Management System</title>
    <style>
        /* CSS for background image */
        body {
            margin: 0;
            padding: 0;
            background-image: url('images/im3.jpg'); /* Path to your image */
            background-size: cover; /* Ensures the image covers the entire page */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            background-position: center; /* Centers the image */
            font-family: Arial, sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 80%; /* Decrease the navbar width */
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #007bff; /* Black background */
            padding: 15px 40px;
            z-index: 1000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto; /* Center navbar */
            position: relative; /* Ensure dropdown stays within the navbar */
        }

        /* Title (EASY LOANS) styling */
        .navbar .title {
            color: #fff;
            font-size: 2em;
            font-weight: bold;
            text-transform: uppercase;
            position: relative;
            flex-grow: 1; /* Allow title to take available space */
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            display: inline-block;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #333; /* Dark gray */
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .navbar a:active {
            background-color: #111; /* Very dark gray */
            transform: translateY(0);
        }

        /* Positioning of login buttons */
        .navbar .menu-items {
            display: flex;
            gap: 15px;
            align-items: center;
            justify-content: flex-end; /* Align the menu items to the right */
        }

        /* About Page Content */
        .content {
            background-color: rgba(0, 0, 0, 0.7); /* Transparent black background for readability */
            color: white;
            padding: 30px;
            margin: 10% auto 0;
            width: 80%;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .content h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 1.2rem;
            line-height: 1.8;
        }

        /* Dropdown Styles */
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #000;
            min-width: 160px;
            z-index: 1;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            right: 0; /* Align dropdown to the right of the login button */
        }

        .dropdown-toggle:hover + .dropdown-menu,
        .dropdown-menu:hover {
            display: block;
        }

        .dropdown-item {
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="title">LOAN MANAGEMENT SYSTEM</div>
        <div>
            <a href="/">Home</a>
            <a href="aboutus">About Us</a>
            <a href="#" class="dropdown-toggle">Login</a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="adminlogin">Admin Login</a></li>
                <li><a class="dropdown-item" href="userregister">User Login</a></li>
                <li><a class="dropdown-item" href="lenderregister">Lender Login</a></li>
            </ul>
            <a href="contactus">Contact Us</a>
        </div>
    </div>

    <!-- About Us page content -->
    <div class="content">
        <h1>About Loan Management System</h1>
        <p>
            The Loan Management System is designed to simplify and streamline the process of managing loans. 
            It provides users, lenders, and administrators with a seamless platform to handle loan applications, 
            approvals, repayments, and more.
        </p>
        <p>
            With features like loan request tracking, user-friendly dashboards, and automated notifications, 
            this system ensures a hassle-free experience for everyone involved.
        </p>
        <p>
            Whether you are an individual applying for a loan, a lender managing requests, 
            or an administrator overseeing the entire process, the Loan Management System offers tailored tools 
            to meet your needs efficiently and effectively.
        </p>
    </div>

    <!-- Optional JavaScript for dropdown functionality -->
    <script>
        // Simple script to handle dropdown toggle
        document.querySelector('.dropdown-toggle').addEventListener('click', function(event) {
            event.preventDefault();
            const menu = document.querySelector('.dropdown-menu');
            menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
        });
    </script>
</body>
</html>

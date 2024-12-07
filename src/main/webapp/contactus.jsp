<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact Us - Loan Management System</title>
    <style>
        /* CSS for background image */
        body {
            margin: 0;
            padding: 0;
            background-image: url('images/im5.jpg'); /* Path to your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 80%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #007bff; /* Blue background */
            padding: 15px 40px;
            z-index: 1000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto;
            position: relative;
        }

        .navbar .title {
            color: #fff;
            font-size: 2em;
            font-weight: bold;
            text-transform: uppercase;
            flex-grow: 1;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #333;
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .navbar a:active {
            background-color: #111;
            transform: translateY(0);
        }

        .navbar .menu-items {
            display: flex;
            gap: 15px;
            align-items: center;
            justify-content: flex-end;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #000;
            min-width: 160px;
            z-index: 1;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            right: 0;
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

        .content {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 30px;
            margin: 5% auto;
            width: 80%;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .content h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .content form {
            text-align: left;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .content input, .content textarea {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            font-size: 1rem;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .content button {
            width: 40%;
            padding: 10px;
            font-size: 1rem;
            border: none;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .content button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
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

    <!-- Contact Us Content -->
    <div class="content">
        <h1>Contact Us</h1>
        <p>If you have any questions or need support, please fill out the form below and we will get back to you as soon as possible.</p>
        
        <!-- Contact Us Form -->
        <form action="sendContactMessage" method="POST">
            <input type="text" name="name" placeholder="Your Name" required />
            <input type="email" name="email" placeholder="Your Email" required />
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>

    <!-- Optional JavaScript for dropdown functionality -->
    <script>
        document.querySelector('.dropdown-toggle').addEventListener('click', function(event) {
            event.preventDefault();
            const menu = document.querySelector('.dropdown-menu');
            menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
        });
    </script>
</body>
</html>

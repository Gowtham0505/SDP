<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EASY LOANS</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Global styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        /* Navbar styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: #007bff; /* Bootstrap primary color */
            padding: 10px 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000; /* Ensure the navbar is on top */
        }

        /* Title (EASY LOANS) styling */
        .navbar .title {
            color: white;
            font-size: 1.8em;
            font-weight: bold;
            text-transform: uppercase;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .navbar a:active {
            background-color: #004494;
            transform: translateY(0);
        }

        /* Dropdown styles */
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #007bff;
            min-width: 160px;
            z-index: 1;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
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
            background-color: #0056b3;
        }

        /* Mobile responsiveness */
        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                display: block;
                width: calc(100% - 40px);
                text-align: center;
                margin-bottom: 10px;
                box-sizing: border-box;
            }
        }

        /* Spacing for main content to prevent overlap with navbar */
        .main-content {
            padding-top: 70px; /* Adjust based on navbar height */
            text-align: center;
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

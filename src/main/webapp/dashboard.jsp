<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Global styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Sidebar styles */
        .sidebar {
            height: 100vh;
            width: 250px;
            background-color: #343a40;
            padding: 20px;
            position: fixed;
            transition: width 0.3s;
            overflow: auto;
        }

        .sidebar h2 {
            color: #ffffff;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
        }

        .sidebar a {
            display: block;
            color: #b7b9bc;
            padding: 12px 15px;
            margin-bottom: 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .sidebar a:hover {
            background-color: #007bff;
            color: white;
        }

        /* Dropdown styles */
        .dropdown {
            position: relative;
        }

        .dropdown-toggle {
            display: block;
            color: #b7b9bc;
            padding: 12px 15px;
            margin-bottom: 15px;
            text-decoration: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.1);
            transition: background 0.3s;
        }

        .dropdown-toggle:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .dropdown-content {
            display: none;
            position: absolute;
            left: 0;
            background-color: #ffffff;
            min-width: 220px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px;
            margin-top: 5px;
        }

        .dropdown-content a {
            color: #007bff;
            padding: 12px 15px;
            text-decoration: none;
            display: block;
            transition: background 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #e7f3ff;
            color: #0056b3;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Main content styles */
        .main {
            margin-left: 250px;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Card styles */
        .dashboard-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 0 -15px;
        }

        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 15px;
            width: 200px;
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        .card h3 {
            color: #007bff;
            margin-bottom: 10px;
        }

        .card p {
            margin-bottom: 15px;
            font-size: 14px;
            color: #666;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
            font-size: 14px;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .main {
                margin-left: 200px;
            }

            .dashboard-cards {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>EasyPay</h2>
        <a href="#">Dashboard</a>
        <div class="dropdown">
            <a href="#" class="dropdown-toggle">Manage Users</a>
            <div class="dropdown-content">
                <a href="viewAllUsers.jsp">View All Users</a>
                <a href="updateUser.jsp">Update User</a>
                <a href="deleteUser.jsp">Delete User</a>
            </div>
        </div>
        <a href="#">Manage Funds</a>
        <a href="#">Manage Fund Advisors</a>
        <a href="#">Feedback and Reviews</a>
    </div>

    <div class="main">
        <h1>Admin Dashboard</h1>
        <div class="dashboard-cards">
            <div class="card">
                <h3>Manage Users</h3>
                <p>View and manage all registered users in the system.</p>
                <a href="viewallusers" class="btn">View Users</a>
            </div>
            <div class="card">
                <h3>Manage Events</h3>
                <p>Create, update, and delete events for users and advisors.</p>
                <a href="manageEvents.jsp" class="btn">Manage Events</a>
            </div>
            <div class="card">
                <h3>Manage Funds</h3>
                <p>View and manage all registered funds in the system.</p>
                <a href="viewFunds.jsp" class="btn">View Funds</a>
            </div>
            
            <div class="card">
                <h3>Manage advisor</h3>
                <p>View and manage all registered fund advisors.</p>
                <a href="viewadvisor.jsp" class="btn">View advisor</a>
            </div>
        </div>
    </div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrower Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: #fff;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar a, .dropdown-item {
            color: #ddd;
            padding: 15px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover, .dropdown-item:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <!-- Include the Navigation Bar -->
    <%@ include file="usernav.jsp" %>

    <div class="content">
        <div class="row">
            <!-- Loan Requests Card -->
            <div class="col-md-4">
                <div class="card p-4 mb-4">
                    <h5>Loan Requests</h5>
                    <p>View and manage new loan applications from borrowers.</p>
                    <a href="loanrequest" class="btn btn-primary">Loan Requests</a>
                </div>
            </div>

            <!-- Approved Loans Card -->
            <div class="col-md-4">
                <div class="card p-4 mb-4">
                    <h5>View Loan  Request</h5>
                    <p>Review loans you have approved and track their status.</p>
                    <a href="loanrequestuserid" class="btn btn-success">View Loan Request</a>
                </div>
            </div>

            <!-- Payment History Card -->
            <div class="col-md-4">
                <div class="card p-4 mb-4">
                    <h5>Payments</h5>
                    <p>Monitor incoming payments and repayment schedules.</p>
                    <a href="payments" class="btn btn-warning">Check Payments</a>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>

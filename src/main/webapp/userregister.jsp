<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
     /* Global Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
}

/* Form Container */
.form-container {
    width: 100%;
    max-width: 480px;
    background: #ffffff;
    padding: 40px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    transition: transform 0.3s ease-in-out;
    text-align: center;
}

.form-container:hover {
    transform: scale(1.02);
}

/* Heading */
.form-container h2 {
    color: #333;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 30px;
}

/* Form Groups */
.form-group {
    margin-bottom: 20px;
    text-align: left;
}

.form-group label {
    display: block;
    color: #495057;
    font-size: 16px;
    font-weight: 500;
    margin-bottom: 8px;
}

/* Input Fields */
.form-group input, .form-group select {
    width: 100%;
    padding: 14px;
    border: 2px solid #ced4da;
    border-radius: 8px;
    font-size: 16px;
    color: #495057;
    background-color: #f8f9fa;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

/* Focus States for Input Fields */
.form-group input:focus, .form-group select:focus {
    border-color: #80bdff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
    outline: none;
}

/* Submit Button */
.form-group button {
    width: 100%;
    padding: 14px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 18px;
    cursor: pointer;
    font-weight: 600;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.form-group button:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}

/* Login Link */
.login-link {
    margin-top: 25px;
}

.login-link p {
    font-size: 16px;
    color: #6c757d;
}

.login-link a {
    color: #007bff;
    text-decoration: none;
    font-weight: 600;
    transition: color 0.3s ease;
}

.login-link a:hover {
    color: #0056b3;
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 768px) {
    .form-container {
        padding: 30px;
    }

    .form-container h2 {
        font-size: 24px;
    }

    .form-group input, .form-group select {
        font-size: 14px;
    }

    .form-group button {
        font-size: 16px;
    }
}
     
    </style>
</head>
<%@include file="mainnav.jsp" %>
<body>

<div class="form-container">
    <h2>Registration Form</h2>
    <form action="/insertuser" method="post">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" maxlength="20" required>
        </div>
        
        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        
        <div class="form-group">
            <label for="dateofbirth">Date of Birth</label>
            <input type="date" id="dateofbirth" name="dateofbirth" required>
        </div>
        
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" maxlength="30" required>
        </div>
        
        <div class="form-group">
            <label for="phonenumber">Phone Number</label>
            <input type="tel" id="phonenumber" name="phonenumber" maxlength="10" required>
        </div>
        
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" maxlength="15" required>
        </div>
        
       
        <div class="form-group">
            <button type="submit">Register</button>
        </div>
    </form>

    <div class="login-link">
        <p>Already have an account? <a href="/userlogin">Login here</a></p>
    </div>
</div>

</body>
</html>

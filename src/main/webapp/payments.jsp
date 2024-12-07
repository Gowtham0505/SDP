<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make Loan Payment</title>
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #a3c1ad, #b3d9fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
            padding: 20px;
        }

        /* Container Styles */
        .container {
            width: 100%;
            max-width: 800px;
            background: #fff;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        h2 {
            text-align: center;
            font-size: 32px;
            color: #2c3e50;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 12px 16px;
            border-radius: 10px;
            border: 2px solid #ccc;
            font-size: 16px;
            color: #555;
            background-color: #f8f8f8;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #3498db;
            background-color: #fff;
            outline: none;
        }

        .btn-primary {
            width: 100%;
            padding: 14px;
            font-size: 18px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2980b9;
        }

        .alert {
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 16px;
        }

        .alert-success {
            background-color: #28a745;
            color: white;
        }

        .alert-danger {
            background-color: #e74c3c;
            color: white;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 30px;
            }

            h2 {
                font-size: 28px;
            }

            .form-control {
                font-size: 14px;
            }

            .btn-primary {
                font-size: 16px;
            }
        }

    </style>

    <!-- Add custom JavaScript for additional validation -->
    <script>
        function validateForm() {
            var userId = document.getElementById('userId').value;
            var loanId = document.getElementById('loanId').value;
            var amount = document.getElementById('amount').value;
            var cardNumber = document.getElementById('cardNumber').value;
            var cardExpiry = document.getElementById('cardExpiry').value;
            var cardCVC = document.getElementById('cardCVC').value;

            // Check if fields are empty
            if (!userId || !loanId || !amount || !cardNumber || !cardExpiry || !cardCVC) {
                alert("Please fill all the fields.");
                return false;
            }

            // Validate card number (16 digits)
            var cardNumberPattern = /^[0-9]{16}$/;
            if (!cardNumber.match(cardNumberPattern)) {
                alert("Please enter a valid 16-digit card number.");
                return false;
            }

            // Validate card expiry (MM/YY format)
            var expiryPattern = /^(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})$/;
            if (!cardExpiry.match(expiryPattern)) {
                alert("Please enter a valid card expiry date (MM/YY).");
                return false;
            }

            // Validate CVC (3 digits)
            var cvcPattern = /^[0-9]{3}$/;
            if (!cardCVC.match(cvcPattern)) {
                alert("Please enter a valid 3-digit CVC.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

    <div class="container">
        <div class="card">
            <h2>Loan Payment</h2>

            <!-- Show Success Message -->
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success" role="alert">
                    ${successMessage}
                </div>
            </c:if>

            <!-- Show Error Message -->
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger" role="alert">
                    ${errorMessage}
                </div>
            </c:if>

            <div class="payment-details">
                <form action="/payments" method="post" onsubmit="return validateForm()">
                    <!-- User Details Section -->
                    <div class="payment-form">
                        <h3>User Details</h3>

                        <div class="form-group">
                            <label for="userId">User ID:</label>
                            <input type="number" class="form-control" id="userId" name="userId" required>
                        </div>

                        <div class="form-group">
                            <label for="loanId">Loan ID:</label>
                            <input type="number" class="form-control" id="loanId" name="loanId" required>
                        </div>

                        <div class="form-group">
                            <label for="amount">Amount (₹):</label>
                            <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
                        </div>
                    </div>

                    <!-- Card Details Section -->
                    <div class="payment-form">
                        <h3>Card Details</h3>

                        <div class="form-group">
                            <label for="cardNumber">Card Number:</label>
                            <input type="text" class="form-control" id="cardNumber" name="cardNumber" maxlength="16" required>
                        </div>

                        <div class="form-group">
                            <label for="cardExpiry">Card Expiry (MM/YY):</label>
                            <input type="text" class="form-control" id="cardExpiry" name="cardExpiry" placeholder="MM/YY" required>
                        </div>

                        <div class="form-group">
                            <label for="cardCVC">Card CVC:</label>
                            <input type="text" class="form-control" id="cardCVC" name="cardCVC" maxlength="3" required>
                        </div>

                        <button type="submit" class="btn-primary">Submit Payment</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>

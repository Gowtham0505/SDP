<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Users</title>
    <style>
        /* General styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #333;
            text-transform: uppercase;
            margin-bottom: 30px;
        }

        /* Table styling */
        table {
            width: 100%;
            max-width: 1500px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            th, td {
                padding: 10px;
                font-size: 14px;
            }

            h3 {
                font-size: 24px;
            }
        }

        @media (max-width: 480px) {
            table, th, td {
                display: block;
                width: 100%;
            }

            th, td {
                text-align: right;
                padding: 10px;
                font-size: 14px;
                border-bottom: 1px solid #ddd;
            }

            th::before, td::before {
                content: attr(data-label);
                float: left;
                font-weight: bold;
                text-transform: uppercase;
            }

            th {
                display: none; /* Hide table headers */
            }

            tr {
                margin-bottom: 15px;
                display: block;
                border: 1px solid #ddd;
            }
        }
    </style>
</head>
<body>
    
    <h3><u>View All USERS</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>password</th>
            <th>BussinessType</th>
            <th>Verification Status</th>
            <th>Verify</th>
            
            <th>Delete</th>
        </tr>
        <c:forEach items="${lenderlist}" var="lender">
            <tr>
        
                <td data-label="Id"><c:out value="${lender.id}"/></td>
                <td data-label="Name"><c:out value="${lender.name}"/></td>
                <td data-label="Email"><c:out value="${lender.email}"/></td>
                <td data-label="PhoneNumber"><c:out value="${lender.phonenumber}"/></td>
                   <td data-label="Password"><c:out value="${lender.password}"/></td>
                   <td data-label="BussinessType"><c:out value="${lender.bussinessType}"/></td>
                <td>
                    <c:choose>
                        <c:when test="${lender.verified}">
                            <span class="badge badge-success">Verified</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-danger">Not Verified</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <c:if test="${!lender.verified}">
                        <a href="verifylender?id=${lender.id}" class="btn btn-success">Verify</a>
                    </c:if>
                </td>
               
                <td>
                    <a href="deletelender?id=${lender.id}" class="btn btn-danger" 
                       onclick="return confirm('Are you sure you want to delete this user?');">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

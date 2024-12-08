<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Job Applications</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: black;
            color: #fff;
        }
        h2 {
            color: #ff4d4d;
            text-align: center;
        }
        .table-container {
            background-color: #1a1a1a;
            padding: 20px;
            border-radius: 8px;
            max-width: 800px;
            margin: 30px auto;
            border: 1px solid #ff4d4d;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left; /* Left-align content in table cells */
            color: #fff;
        }
        th {
            background-color: #333;
            color: #ff4d4d;
        }
        td {
            background-color: #222;
        }
        tr:nth-child(even) td {
            background-color: #333;
        }
        input[type="submit"] {
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background-color: #e60000;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
    <h2>Available Application</h2>
    <div class="table-container">
        <c:if test="${not empty eventList}">
            <table border="1">
                <tr>
                    <th>Job ID</th>
                    <th>Job Name</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Location</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="event" items="${eventList}">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.eventName}</td>
                        <td>${event.description}</td>
                        <td>${event.date}</td>
                        <td>${event.location}</td>
                        <td>
    <img src='displayEventImage?id=${event.id}' width="80%" height="80%">
</td>
                        
                        <td>
                           <form action="registerEvent" method="post">
    <input type="hidden" name="eventId" value="${event.id}" />
    <input type="hidden" name="studentId" value="${student.id}" /> <!-- Ensure student.id is an integer -->
    <input type="submit" value="Register" />
</form>

                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <c:if test="${empty eventList}">
            <p style="text-align: center; color: #ff4d4d;">No Applications available for registration.</p>
        </c:if>
    </div>
</body>
</html>

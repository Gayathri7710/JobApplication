<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered Applications</title>
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
        a {
            display: block;
            text-align: center;
            color: #ff4d4d;
            font-weight: bold;
            text-decoration: none;
            margin-top: 20px;
        }
        a:hover {
            color: #e60000;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
    <h2>Your Registered Applications</h2>
    <div class="table-container">
        <c:if test="${not empty registeredEvents}">
            <table border="1">
                <tr>
                    <th>Event ID</th>
                    <th>Event Name</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Location</th>
                    <th>Image</th>
                </tr>
                <c:forEach var="event" items="${registeredEvents}">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.eventName}</td>
                        <td>${event.description}</td>
                        <td>${event.date}</td>
                        <td>${event.location}</td>
                         <td>
    <img src='displayEventImage?id=${event.id}' width="80%" height="80%">
</td>
                        
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <c:if test="${empty registeredEvents}">
            <p style="text-align: center; color: #ff4d4d;">You have not registered for any applications yet.</p>
        </c:if>
    </div>

    <a href="/viewevents">Back to Available Applications</a>
</body>
</html>

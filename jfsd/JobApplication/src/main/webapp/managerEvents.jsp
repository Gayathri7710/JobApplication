<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recruiter Events</title>
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
    <%@ include file="managernavbar.jsp" %>
    <h2>Job Applications Managed by You</h2>
    <div class="table-container">
        <c:if test="${not empty eventList}">
            <table>
                <thead>
                    <tr>
                        <th>Application ID</th>
                        <th>Application Name</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Location</th>
                        <th>Image</th>
                        <th>View Registered User</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="event" items="${eventList}">
                        <tr>
                            <td>${event.id}</td>
                            <td>${event.eventName}</td>
                            <td>${event.description}</td>
                            <td>${event.date}</td>
                            <td>${event.location}</td>
                            <td>
                                <c:if test="${event.eventImg != null}">
                                    <img src="displayEventImage?id=${event.id}" width="80" height="80" alt="Event Image">
                                </c:if>
                                <c:if test="${event.eventImg == null}">No Image</c:if>
                            </td>
                            <td>
    <a href="${pageContext.request.contextPath}/viewRegisteredStudents/${event.id}" style="text-decoration: none;">
        <button style="background-color: #ff4d4d; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; font-weight: bold;">
            View User
        </button>
    </a>
</td>


                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty eventList}">
            <p class="no-events">No Application managed by you.</p>
        </c:if>
    </div>
</body>

</html>

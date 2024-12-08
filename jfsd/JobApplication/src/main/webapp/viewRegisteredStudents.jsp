<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered User</title>
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
            text-align: left;
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
        }
   
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
    <h2>Registered Users for Application</h2>
    <div class="table-container">
        <c:if test="${not empty registeredStudents}">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${registeredStudents}">
                        <tr>
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.email}</td>
                            <td>${student.contact}</td>
                           
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty registeredStudents}">
            <p>No Users registered for this Applications.</p>
        </c:if>
    </div>
    <div style="text-align: center; margin: 20px 0;">
    <a href="${pageContext.request.contextPath}/managerEvents" 
       style="text-decoration: none; color: #ff4d4d; font-weight: bold; font-size: 16px; 
              padding: 10px 20px; border: 2px solid #ff4d4d; border-radius: 4px; display: inline-block;">
        Back to Job Applications
    </a>
</div>



</body>

</html>

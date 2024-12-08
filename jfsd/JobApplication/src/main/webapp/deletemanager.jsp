view
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Recruiter</title>
    <style>
    
        body {
            margin: 0;
            padding-top: 60px; /* Adjust this padding based on the navbar height */
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .content {
            margin-left: 200px; /* Adjust according to sidebar width */
            padding: 20px;
        }

        h3 {
            text-align: center;
            color: #ff4d4d;
            margin-top: 20px; 
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto; /* Centers the table */
            border-collapse: collapse;
            background-color: #000;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ff4d4d;
        }

        th {
            background-color: #ff4d4d;
        }

        tr:nth-child(even) {
            background-color: #333;
        }

        tr:hover {
            background-color: #555;
        }

        /* Navbar styling */
        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px; /* Sidebar width */
            height: 100vh;
            background-color: #333;
            z-index: 1000;
            color: white;
            text-align: center;
        }

        .table-container {
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
        }
        a.delete-button {
    display: inline-block;
    padding: 8px 12px;
    background-color: #ff4d4d; /* Red color for delete */
    color: #fff; /* White text color */
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.2s;
    font-weight: bold;
}

a.delete-button:hover {
    background-color: #cc0000; /* Darker red on hover */
    transform: scale(1.1); /* Slight zoom effect */
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3); /* Subtle text shadow */
}
        
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h3>Delete Recruiter</h3>
        <div class="table-container">
            <table align="right">
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>CLUB</th>
                    <th>EMAIL</th>
                    <th>LOCATION</th>
                    <th>CONTACT</th>
                     <th>ACTION</th>
                </tr>
                <c:forEach items="${manlist}" var="m">
                    <tr>
                        <td><c:out value="${m.id}"/></td>
                        <td><c:out value="${m.name}"/></td>
                        <td><c:out value="${m.gender}"/></td>
                        <td><c:out value="${m.dateOfBirth}"/></td>
                        <td><c:out value="${m.club}"/></td>
                        <td><c:out value="${m.email}"/></td>
                        <td><c:out value="${m.location}"/></td>
                        <td><c:out value="${m.contact}"/></td>
 				<td>
    <a class="delete-button" href="<c:url value='deletemanager/${m.id}' />">Delete</a>

</td>


                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
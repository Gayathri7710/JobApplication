<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Job Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1a1a1a;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }
        h2 {
            color: #ff0000;
            text-align: center;
            margin-top: 20px;
        }
        .form-container {
            background-color: #2b2b2b;
            border: 1px solid #ff0000;
            border-radius: 10px;
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 10px 0 5px;
            font-weight: bold;
            color: #ff0000;
        }
        input[type="text"], input[type="date"], textarea, select, input[type="file"] {
            background-color: #333333;
            color: #ffffff;
            border: 1px solid #ff0000;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        input[type="text"]:focus, input[type="date"]:focus, textarea:focus, select:focus, input[type="file"]:focus {
            outline: none;
            border-color: #ff3333;
        }
        textarea {
            resize: none;
        }
        input[type="submit"] {
            background-color: #ff0000;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
    <h2>Add New Event</h2>
    <div class="form-container">
        <form action="insertevent" method="post" enctype="multipart/form-data">
            <label for="ename">Job Application Name:</label>
            <input type="text" id="ename" name="ename" required>

            <label for="managerId">Select recruiter:</label>
            <select id="managerId" name="managerId" required>
                <c:forEach var="manager" items="${managerList}">
                    <option value="${manager.id}">${manager.name} - ${manager.club}</option>
                </c:forEach>
            </select>

            <label for="edescription">Description:</label>
            <textarea id="edescription" name="edescription" rows="4" required></textarea>

            <label for="edate">Date:</label>
            <input type="date" id="edate" name="edate" required>

            <label for="elocation">Location:</label>
            <input type="text" id="elocation" name="elocation" required>

            <label for="eimg">Upload Job Image:</label>
            <input type="file" id="eimg" name="eimg" accept="image/*">

            <input type="submit" value="Add Event">
        </form>
    </div>
</body>
</html>

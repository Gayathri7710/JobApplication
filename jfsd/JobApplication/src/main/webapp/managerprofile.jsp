<%@page import="com.klef.jfsd.model.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Manager m = (Manager)session.getAttribute("manager");
if(m == null) {
	response.sendRedirect("managersessionfail");
	return;
}
%>
<%-- %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruiter Home</title>
<style>
    /* Basic page styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #e9ecef;
        margin: 0;
        padding: 0;
        display: flex;
        min-height: 100vh;
    }
    
    /* Navbar styling */
    .navbar {
        width: 200px;
        background-color: #343a40;
        color: #fff;
        padding: 20px;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .navbar a {
        color: #fff;
        text-decoration: none;
        margin: 10px 0;
    }

    /* Content styling */
    .content {
        flex: 1;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .content-inner {
        width: 50%;
        text-align: center;
        background-color: #f0f0f0;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="managernavbar.jsp" %>
</div>

<!-- Main Content -->
<div class="content">
    <div class="content-inner">
        <h2>Welcome, <%=m.getName()%>!</h2>
        <p>ID: <%=m.getId()%></p>
        <p>Gender: <%=m.getGender()%></p>
        <p>Department: <%=m.getClub()%></p>
        <p>Email: <%=m.getEmail()%></p>
        <p>Location: <%=m.getLocation()%></p>
        <p>Contact: <%=m.getContact()%></p>
    </div>
</div>

</body>
</html>
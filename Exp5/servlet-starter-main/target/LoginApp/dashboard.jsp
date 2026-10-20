<!-- Aim: Dashboard page shown after successful login (session-protected). -->
<!-- Name: Qureshi Atif Meraj Alam | UIN: 251P004 | Class: S.E.Computer A -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%
    // session guard: if user is not logged in, redirect to login page
    if (session == null || session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f2f5; margin: 0; }
        .dashboard { width: 450px; margin: 80px auto; background: white; padding: 30px;
                     border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.15); }
        h2 { color: #2c3e50; }
        .info-label { font-weight: bold; color: #888; margin-top: 12px; }
        .info-value { font-size: 18px; color: #2c3e50; }
        .logout { display: inline-block; margin-top: 25px; padding: 10px 20px;
                  background: #e74c3c; color: white; text-decoration: none;
                  border-radius: 5px; }
    </style>
</head>
<body>
    <div class="dashboard">
        <h2>Dashboard</h2>
        <h3>Welcome, <%= session.getAttribute("name") %>!</h3>
        <p>You have successfully logged in.</p>

        <div class="info-label">Name</div>
        <div class="info-value"><%= session.getAttribute("name") %></div>

        <div class="info-label">Email</div>
        <div class="info-value"><%= session.getAttribute("email") %></div>

        <div class="info-label">Session Login Time</div>
        <div class="info-value"><%= new Date() %></div>

        <a class="logout" href="logout">Logout</a>
    </div>
</body>
</html>

<!-- Aim: Welcome page that uses implicit JSP objects (request, out) and explicit Date object.
<!-- Name: Qureshi Atif Meraj Alam | UIN: 251P004 | Class: S.E.Computer A -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%
    // IMPLICIT OBJECT: request — retrieve values submitted through the form
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    // handle case where user navigates directly without submitting the form
    if (name == null || name.isEmpty()) name = "Guest";
    if (email == null || email.isEmpty()) email = "Not provided";

    // EXPLICIT OBJECT: Date — created by the programmer using the new keyword
    Date loginDate = new Date();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 450px; margin: 60px auto; }
        .card { border: 1px solid #ddd; border-radius: 10px; padding: 25px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
        h1 { color: #2c3e50; }
        .info-label { font-weight: bold; color: #888; margin-top: 14px; }
        .info-value { font-size: 17px; color: #2c3e50; }
    </style>
</head>
<body>
    <div class="card">
        <!-- IMPLICIT OBJECT: out — sends output to the browser -->
        <%
            out.println("<h1>Welcome, " + name + "!</h1>");
        %>

        <div class="info-label">Email Address</div>
        <div class="info-value"><%= email %></div>

        <div class="info-label">Session Login Time (explicit Date object)</div>
        <div class="info-value"><%= loginDate %></div>
    </div>
</body>
</html>

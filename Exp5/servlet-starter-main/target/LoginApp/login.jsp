<!-- Aim: WAP to design a login webpage using JSP that validates the user's username and
       password from a MySQL database using JDBC. On successful authentication, redirect
       the user to a welcome page (dashboard.jsp); otherwise display an error message.
       The login request is processed by a servlet.
<!-- Name: Qureshi Atif Meraj Alam | UIN: 251P004 | Class: S.E.Computer A -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f2f5; margin: 0; }
        .login-box { width: 360px; margin: 80px auto; background: white; padding: 30px;
                     border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.15); }
        h2 { text-align: center; color: #2c3e50; }
        p.welcome { text-align: center; color: #666; }
        label { display: block; margin-top: 15px; font-weight: bold; color: #333; }
        input { width: 100%; padding: 10px; margin-top: 5px; box-sizing: border-box;
                border: 1px solid #ccc; border-radius: 5px; }
        button { width: 100%; margin-top: 20px; padding: 12px; background: #3498db;
                 color: white; border: none; border-radius: 5px; font-size: 15px;
                 cursor: pointer; }
        button:hover { background: #2980b9; }
        .error { color: red; text-align: center; margin-top: 12px; }
        .back { text-align: center; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Login Page</h2>
        <p class="welcome">Please sign in to access your account dashboard.</p>

        <% if (request.getParameter("error") != null) { %>
            <p class="error">Incorrect Credentials! Please try again.</p>
        <% } %>

        <form action="login" method="post">
            <label for="email">Enter Email</label>
            <input type="text" name="email" id="email" placeholder="Enter your email"
                   value="atifq2602@gmail.com" required>

            <label for="pass">Enter Password</label>
            <input type="password" name="pass" id="pass" placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>

        <div class="back">
            <a href="index.html">Back to Home</a>
        </div>
    </div>
</body>
</html>

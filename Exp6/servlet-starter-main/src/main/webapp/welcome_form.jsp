<!-- Aim: WAP to create a JSP page that accepts a user's name and email through an HTML form.
       Use the implicit 'request' object to retrieve the submitted values and the 'out' object
       to display a personalized welcome message along with the current date and time.
       Use the explicit 'Date' object.
<!-- Name: Qureshi Atif Meraj Alam | UIN: 251P004 | Class: S.E.Computer A -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exp 6 - Implicit &amp; Explicit Objects</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 450px; margin: 50px auto; }
        h1 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 8px; }
        label { display: block; margin-top: 14px; font-weight: bold; }
        input { width: 100%; padding: 9px; margin-top: 5px; box-sizing: border-box;
                border: 1px solid #ccc; border-radius: 5px; }
        button { margin-top: 18px; padding: 10px 22px; background: #3498db; color: white;
                 border: none; border-radius: 5px; cursor: pointer; }
        button:hover { background: #2980b9; }
    </style>
</head>
<body>
    <h1>Exp 6 - JSP Objects</h1>
    <form action="welcome.jsp" method="get">
        <label for="name">Enter Your Name</label>
        <input type="text" name="name" id="name" placeholder="Atif" required>

        <label for="email">Enter Your Email</label>
        <input type="email" name="email" id="email" placeholder="atifq2602@gmail.com" required>

        <button type="submit">Submit</button>
    </form>
</body>
</html>

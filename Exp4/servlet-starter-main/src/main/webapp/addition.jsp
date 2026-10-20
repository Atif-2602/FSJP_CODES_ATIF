<!-- Aim: WAP to implement an HttpServlet that accepts two numbers from an HTML form using the
       GET method and displays their sum by overriding the doGet() method.
<!-- Name: Qureshi Atif Meraj Alam | UIN: 251P004 | Class: S.E.Computer A -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exp 4 - Addition Form</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f2f5; margin: 0; }
        .box { width: 400px; margin: 80px auto; background: white; padding: 30px;
               border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.15);
               text-align: center; }
        h1 { color: #2c3e50; }
        label { display: block; margin-top: 18px; font-weight: bold; text-align: left; }
        input { width: 100%; padding: 10px; margin-top: 6px; box-sizing: border-box;
                border: 1px solid #ccc; border-radius: 5px; }
        button { margin-top: 22px; padding: 10px 30px; background: #3498db; color: white;
                 border: none; border-radius: 5px; font-size: 15px; cursor: pointer; }
        button:hover { background: #2980b9; }
        .links { margin-top: 20px; font-size: 14px; }
    </style>
</head>
<body>
    <div class="box">
        <h1>Addition</h1>
        <form action="add" method="get">
            <label for="num1">Enter First Number</label>
            <input type="text" name="num1" id="num1" value="6" required>

            <label for="num2">Enter Second Number</label>
            <input type="text" name="num2" id="num2" value="8" required>

            <button type="submit">Submit</button>
        </form>
        <div class="links">
            <a href="name.jsp">Go to Name Form</a> | <a href="index.html">Home</a>
        </div>
    </div>
</body>
</html>

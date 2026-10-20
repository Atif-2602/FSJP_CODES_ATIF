// Aim: WAP to implement an HttpServlet that accepts two numbers from an HTML form using the GET
//      method and displays their sum by overriding the doGet() method.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            int number1 = Integer.parseInt(request.getParameter("num1"));
            int number2 = Integer.parseInt(request.getParameter("num2"));
            int sum = number1 + number2;

            out.println("<html><body style='font-family:Arial; text-align:center; margin-top:80px;'>");
            out.println("<h1>Sum of two numbers " + number1 + " and " + number2 + " is: " + sum + "</h1>");
            out.println("<br><a href='addition.jsp'>Back to Form</a>");
            out.println("</body></html>");
        } catch (NumberFormatException e) {
            out.println("<h1 style='color:red;'>Please enter valid numbers only!</h1>");
            out.println("<br><a href='addition.jsp'>Back to Form</a>");
        }
    }
}

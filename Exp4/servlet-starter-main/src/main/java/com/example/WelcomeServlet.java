// Aim: WAP to implement a GenericServlet that accepts a user's name through an HTML form
//      and displays a welcome message using the service() method.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/name")
public class WelcomeServlet extends GenericServlet {
    public void service(ServletRequest request, ServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("myname");
        if (name == null || name.isEmpty()) {
            name = "Guest";
        }

        out.println("<html><body style='font-family:Arial; text-align:center; margin-top:80px;'>");
        out.println("<h1>Welcome " + name + "</h1>");
        out.println("<br><a href='name.jsp'>Back to Form</a>");
        out.println("</body></html>");
    }
}

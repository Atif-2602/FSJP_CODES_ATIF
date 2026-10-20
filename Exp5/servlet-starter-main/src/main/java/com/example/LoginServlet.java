// Aim: Servlet that processes the login request, validates credentials against the
//      MySQL database using JDBC, and redirects to dashboard.jsp or login.jsp.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the exp5db database
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/exp5db", "root", "Mayuresh@43");

            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM userdata WHERE Email='" + email
                    + "' AND Password='" + pass + "'";
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                // Valid credentials -> create session and go to dashboard
                HttpSession session = request.getSession();
                session.setAttribute("name", rs.getString("Name"));
                session.setAttribute("email", rs.getString("Email"));
                response.sendRedirect("dashboard.jsp");
            } else {
                // Invalid credentials -> back to login with error
                response.sendRedirect("login.jsp?error=1");
            }

            rs.close();
            stmt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=1");
        }
    }
}

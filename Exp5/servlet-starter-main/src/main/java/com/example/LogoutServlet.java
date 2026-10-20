// Aim: Servlet that invalidates the user session and redirects to the login page.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // destroy the session
        }
        response.sendRedirect("login.jsp");
    }
}

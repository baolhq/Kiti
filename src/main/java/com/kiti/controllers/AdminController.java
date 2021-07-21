package com.kiti.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminController", value = "/Admin")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String isAdmin = null;
        try {
            isAdmin = request.getSession().getAttribute("isAdmin").toString();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        if (isAdmin == null) {
            request.getRequestDispatcher("admin-login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

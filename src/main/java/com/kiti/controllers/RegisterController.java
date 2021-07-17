package com.kiti.controllers;

import com.kiti.daos.UserDAO;
import com.kiti.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/Register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            boolean usernameExist = UserDAO.isUsernameExist(username);
            if (usernameExist) {
                response.sendRedirect(request.getContextPath() + "/Login");
                return;
            }

            UserDAO.register(username, password);
            response.sendRedirect(request.getContextPath() + "/Login");
            request.setAttribute("register-success", "true");
        }
    }
}

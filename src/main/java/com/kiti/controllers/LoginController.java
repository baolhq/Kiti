package com.kiti.controllers;

import com.kiti.daos.UserDAO;
import com.kiti.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        boolean hasCookie = false;

        // Check if browser has cookie that contains username
        if (cookies.length > 0) {
            for (Cookie cookie: cookies) {
                if (cookie.getName().equals("username")) {
                    hasCookie = true;
                    break;
                }
            }
        }

        if (hasCookie) {
            response.sendRedirect(request.getContextPath() + "/");
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Object remember = request.getParameter("remember"); // "on" or "null"

        if (username != null && password != null) {
            User user = UserDAO.login(username, password);

            if (user == null) {
                response.sendRedirect(request.getContextPath() + "/Login");
            } else {
                if (remember != null) {
                    Cookie cookie = new Cookie("username", username);
                    cookie.setMaxAge(60 * 60 * 24);
                    response.addCookie(cookie);
                }

                request.getSession().setAttribute("username", username);
                response.sendRedirect(request.getContextPath() + "/");
            }
        }
    }
}

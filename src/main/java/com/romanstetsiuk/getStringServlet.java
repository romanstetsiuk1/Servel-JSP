package com.romanstetsiuk;

import com.sun.deploy.net.HttpRequest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getString")
public class getStringServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String textByUser = req.getParameter("get_string").trim();

        StringBuilder textBeforeReverse = new StringBuilder(textByUser);
        StringBuilder textAfterRverse = textBeforeReverse.reverse();
        req.setAttribute("result", textAfterRverse);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("getStringReverse.jsp");
        requestDispatcher.forward(req, resp);
    }
}

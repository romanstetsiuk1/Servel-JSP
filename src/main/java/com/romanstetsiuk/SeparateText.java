package com.romanstetsiuk;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/getTextAreaToSeparate")
public class SeparateText extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String textArea = req.getParameter("separatedArea");

        List<String> separatedList = Arrays.asList(textArea.split(","));
        List<String> separatedTrimList = new ArrayList<>();
        for (String item : separatedList) {
            separatedTrimList.add(item.trim());
        }

        List<String> result = separatedTrimList
                .stream()
                .sorted()
                .collect(Collectors
                        .toList());

        req.setAttribute("sortedList", result);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("SeparatedAndSortedList.jsp");
        requestDispatcher.forward(req, resp);
    }
}

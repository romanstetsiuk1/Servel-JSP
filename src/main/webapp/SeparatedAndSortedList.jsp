<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 16.03.19
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Result of separate and sorting:</h2>
<% List<String> lista = (List<String>) request.getAttribute("sortedList");%>

<ul>
    <%
        for (String item : lista) {
    %>
    <li>
        <%=item%>
    </li>
    <%
        }
    %>
</ul>

</body>
</html>

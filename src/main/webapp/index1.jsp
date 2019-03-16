<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 16.03.19
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Random numbers</title>
</head>
<body>

<%
    Random random = new Random();

    for (int i = 0; i < 5; i++) {
        int newRandomValue = random.nextInt(1000);
%>
<ol start="<%=i%>">
    <li>
        Random number is <%=newRandomValue%>
    </li>
</ol>

<%
    }
%>


</body>
</html>

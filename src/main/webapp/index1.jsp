<%@ page import="java.util.Random" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
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
<body onload="clock()">

<%
    Random random = new Random();

    for (int i = 0; i < 5; i++) {
        int newRandomValue = random.nextInt(1000);
%>
<ol>
    <li>
        Random number is <%=newRandomValue%>
    </li>
</ol>

<%
    }
%>

<h2>Data and time now</h2>
<%
    LocalDateTime nowIs = LocalDateTime.now();
%>
<h4>
    Date: <%=nowIs.getDayOfMonth()%> - <%=nowIs.getMonth()%> - <%=nowIs.getYear()%>
</h4>
<h4>
    Time: <%=nowIs.getHour()%>:<%=nowIs.getMinute()%>:<%=nowIs.getSecond()%>
</h4>


</body>
</html>

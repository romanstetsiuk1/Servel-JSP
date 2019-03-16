<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<body>
<h2>Hello World!</h2>

<%
    List<Integer> liczby = new ArrayList<>();
    liczby.add(2000);
    liczby.add(10_000);
    liczby.add(1_000_000);
%>

<%
    for (int i = 0; i < liczby.size(); i++) { %>

<p><%=liczby.get(i)%>
</p>
<%
    }
%>

</body>
</html>

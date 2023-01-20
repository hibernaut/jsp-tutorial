<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 20.01.2023
  Time: 03:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hits Counter</title>
</head>
<body>
<%
    Integer hitsCount = (Integer) application.getAttribute("hitCounter");

    if (hitsCount == null || hitsCount == 0) {
        out.println("Welcome to my website!");
        hitsCount = 1;
    } else {
        out.println("Welcome back to my website!");
        hitsCount++;
    }

    application.setAttribute("hitCounter", hitsCount);
%>

<div style="text-align: center;">
    <p>Total number of visits: <%= hitsCount%>
    </p>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 05.01.2023
  Time: 01:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Page Redirection</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Page Redirection</h1>
</div>
<%
    String site = "/jsp_tutorial_tutorialspoint_war_exploded/currentDate.jsp";

    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 01.01.2023
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
    Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));

    firstName.setMaxAge(60 * 60 * 24);
    lastName.setMaxAge(60 * 60 * 24);

    response.addCookie(firstName);
    response.addCookie(lastName);
%>
<html>
<head>
    <title>Setting Cookies</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Setting Cookie</h1>
</div>
<ul>
    <li>
        <p>First Name:
            <%= request.getParameter("first_name")%>
        </p>
    </li>
    <li>
        <p>Last Name:
            <%= request.getParameter("last_name")%>
        </p>
    </li>
</ul>
</body>
</html>

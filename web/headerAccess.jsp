<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 23.01.2023
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String title = "Accessing Header"; %>

<html>
<head>
    <title><% out.print(title); %></title>
</head>
<body>
<div style="text-align: center;">
    <h1>
        <% out.print(title); %>
    </h1>
</div>

<div style="text-align: center;">
    <p>${header["user-agent"]}</p>
</div>
</body>
</html>

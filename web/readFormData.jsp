<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 25.12.2022
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Using POST Method to Read Form Data</title>
</head>
<body>
<h1>Using POST Method to Read Form Data</h1>

<ul>
    <li>
        <p>First name:
            <%= request.getParameter("first_name")%>
        </p>
    </li>
    <li>
        <p>Last name:
            <%= request.getParameter("last_name")%>
        </p>
    </li>
    <li>
        <p>Maths flag:
            <%= request.getParameter("maths")%>
        </p>
    </li>
    <li>
        <p>Physics flag:
            <%= request.getParameter("physics")%>
        </p>
    </li>
    <li>
        <p>Chemistry flag:
            <%= request.getParameter("chemistry")%>
        </p>
    </li>
</ul>
</body>
</html>

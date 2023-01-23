<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 23.01.2023
  Time: 09:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="showError.jsp" %>

<html>
<head>
    <title>Error Handling Example</title>
</head>
<body>
<%
    int x = 1;

    if (x == 1) {
        throw new RuntimeException("Error condition!!!");
    }
%>
</body>
</html>

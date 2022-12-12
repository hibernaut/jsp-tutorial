<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 12.12.2022
  Time: 05:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Setting HTTP Status Code</title>
</head>
<body>
    <%
//        response.sendError(502, "Bad gateway!");
        response.sendError(403, "Forbidden resource!");
//        response.sendError(404, "We didn't find asked resource!");
    %>
</body>
</html>

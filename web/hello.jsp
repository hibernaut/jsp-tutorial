<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 18.10.2022
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
        Hello World!<br/>
        <%
            out.println("Your IP address is " + request.getRemoteAddr());
        %>

        <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
        <%-- This comment will not be visible in the page source --%>
    </body>
</html>

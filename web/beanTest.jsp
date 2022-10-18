<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 18.10.2022
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Using JavaBeans in JSP</title>
</head>

<body>
<div style="text-align: center;">
    <h2>Using JavaBeans in JSP</h2>
    <jsp:useBean id = "test" class = "action.TestBean" />
    <jsp:setProperty name = "test"  property = "message"
                     value = "Hello JSP..." />

    <p>Got message....</p>
    <jsp:getProperty name = "test" property = "message" />
</div>
</body>
</html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 23.01.2023
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.logging.Logger" %>

<html>
<head>
    <title>Logging Test</title>
</head>
<body>
<% Logger logger = Logger.getLogger(this.getClass().getName());%>

<c:forEach var="counter" begin="1" end="10" step="1">
    <c:set var="myCount" value="${counter-5}"/>
    <c:out value="${myCount}"/>
    <br>
    <%
        String message = "counter = " +
        pageContext.findAttribute("counter") + "myCount = " +
        pageContext.findAttribute("myCount");
        logger.info(message);
    %>
</c:forEach>
</body>
</html>

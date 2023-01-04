<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 05.01.2023
  Time: 01:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.Locale" %>

<html>
<head>
    <title>Display Current Date & Time</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Display Current Date & Time</h1>
</div>
<%
    ZonedDateTime dateTime = ZonedDateTime.now();
    DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("E yyyy.MM.dd 'at' hh:mm:ss a zzz", Locale.US);
    out.print("<h2 align=\"center\">" + dateTime.format(dateFormat) + "</h2>");
%>
</body>
</html>

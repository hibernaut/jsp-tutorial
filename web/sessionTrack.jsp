<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 01.01.2023
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<%
    Date createTime = new Date(session.getCreationTime());

    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "Welcome back to my website";
    Integer visitCount = 0;
    String visitCountKey = "visitCount";
    String userIDKey = "userID";
    String userID = "ABCD";

    if (session.isNew()) {
        title = "Welcome to my website";
        session.setAttribute(userIDKey, userID);
    } else {
        visitCount = (Integer) session.getAttribute(visitCountKey);
        visitCount++;
        userID = (String) session.getAttribute(userIDKey);
    }
    session.setAttribute(visitCountKey, visitCount);
%>
<html>
<head>
    <title><% out.print(title); %></title>
</head>
<body>
<div style="text-align: center;">
    <h1><% out.print(title); %></h1>
</div>

<table align="center">
    <tr>
        <th>Session Info</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Session ID</td>
        <td><% out.print(session.getId()); %></td>
    </tr>
    <tr>
        <td>Creation Time</td>
        <td><% out.print(createTime); %></td>
    </tr>
    <tr>
        <td>Time of Last Access</td>
        <td><% out.print(lastAccessTime); %></td>
    </tr>
    <tr>
        <td>User ID</td>
        <td><% out.print(userID); %></td>
    </tr>
    <tr>
        <td>Number of Visits</td>
        <td><% out.print(visitCount); %></td>
    </tr>
</table>
</body>
</html>

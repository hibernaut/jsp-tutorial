<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 01.01.2023
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reading Cookies</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Reading Cookie</h1>
</div>
<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        out.println("<h2>Found Cookies Name and Value</h2>");

        for (Cookie cookie : cookies) {

            if (cookie.getName().compareTo("first_name") == 0) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                out.print("Deleted cookie: " + cookie.getName() + "<br>");
            }

            out.print("Name : " + cookie.getName() + ", ");
            out.print("Value : " + cookie.getValue() + " <br>");
        }
    } else {
        out.println("<h2>No cookies found</h2>");
    }
%>
</body>
</html>

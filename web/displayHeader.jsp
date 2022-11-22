<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 23.11.2022
  Time: 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>HTTP Header Request Example</title>
</head>
<body>
<div style="text-align: center;">
    <h2>HTTP Header Request Example</h2>

    <table width="100%" border="1" align="center">
        <tr bgcolor="#949494">
            <th>Header Name</th>
            <th>Header Value(s)</th>
        </tr>
        <%
            Enumeration headerNames = request.getHeaderNames();

            while (headerNames.hasMoreElements()) {
                String paramName = (String) headerNames.nextElement();
                out.print("<tr><td>" + paramName + "</td>\n");
                String paramValue = request.getHeader(paramName);
                out.print("<td>" + paramValue + "</td></tr>\n");
            }
        %>
    </table>
</div>
</body>
</html>

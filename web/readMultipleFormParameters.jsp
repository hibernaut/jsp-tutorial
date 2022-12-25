<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 25.12.2022
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reading Multiple Form Parameters</title>
</head>
<body>
    <h2>All Parameters</h2>
    <table width = "100%" align = "center">
        <tr bgcolor = "#949494">
            <th>Param Name</th>
            <th>Param Value(s)</th>
        </tr>
        <%
            Enumeration<String> paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String paramName = paramNames.nextElement();
                out.print("<tr><td>" + paramName + "</td>\n");
                String[] paramValues = request.getParameterValues(paramName);

                for (String paramValue : paramValues) {
                    out.println("<td> " + paramValue + "</td></tr>\n");
                }
            }
        %>
    </table>
</body>
</html>

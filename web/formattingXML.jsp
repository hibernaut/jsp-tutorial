<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 22.01.2023
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP x:transform Tags</title>
</head>
<body>
<h3>Books Info:</h3>

<c:import var="xml" url="http://localhost:8080/jsp_tutorial_tutorialspoint_war_exploded/books.xml"/>
<c:import var="xslt" url="http://localhost:8080/jsp_tutorial_tutorialspoint_war_exploded/style.xsl"/>

<x:transform xml="${xml}" xslt="${xslt}"/>
</body>
</html>

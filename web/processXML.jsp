<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 22.01.2023
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL x:parse Tags</title>
</head>
<body>
<h3>Books Info</h3>
<c:import var="bookInfo" url="http://localhost:8080/jsp_tutorial_tutorialspoint_war_exploded/books.xml" />

<x:parse xml="${bookInfo}" var="output" />
<b>The title of the first book is:</b>
<x:out select="$output/books/book[1]/name" />
<br>

<b>The price of the second book:</b>
<x:out select="$output/books/book[2]/price" />
</body>
</html>

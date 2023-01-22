<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 22.01.2023
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Get and Set Properties Example</title>
</head>
<body>
<jsp:useBean id="books" class="action.BooksBean">
    <jsp:setProperty name="books" property="bookName" value="A Brief History of Time"/>
    <jsp:setProperty name="books" property="bookAuthor" value="Stephen Hawking"/>
    <jsp:setProperty name="books" property="price" value="9.99"/>
</jsp:useBean>

<p>Book Name:
    <jsp:getProperty name="books" property="bookName"/>
</p>

<p>Book Author:
    <jsp:getProperty name="books" property="bookAuthor"/>
</p>

<p>Book Price:
    <jsp:getProperty name="books" property="price"/>
</p>
</body>
</html>

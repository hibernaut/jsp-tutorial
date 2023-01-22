<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 22.01.2023
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Database Access</title>
</head>
<body>

<sql:setDataSource var="database" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/testservlet?useUnicode=true&serverTimezone=UTC&useSSL=false"
                   user="root" password="root"/>

<sql:query dataSource="${database}" var="select">
    SELECT * FROM employees;
</sql:query>

<div style="text-align: center;">
    <h1>SELECT Operation (Showing all existing employees)</h1>
</div>

<table>
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var="row" items="${select.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.first_name}"/></td>
            <td><c:out value="${row.last_name}"/></td>
            <td><c:out value="${row.age}"/></td>
        </tr>
    </c:forEach>
</table>

<sql:update dataSource="${database}" var="insert">
    INSERT INTO employees VALUES (102, 33, 'Tom', 'Williams');
</sql:update>

<sql:query dataSource="${database}" var="select">
    SELECT * FROM employees;
</sql:query>

<div style="text-align: center;">
    <h1>INSERT Operation (Adding new employee with ID 102)</h1>
</div>

<table>
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var="row" items="${select.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.first_name}"/></td>
            <td><c:out value="${row.last_name}"/></td>
            <td><c:out value="${row.age}"/></td>
        </tr>
    </c:forEach>
</table>

<c:set var="empID" value="104"/>

<sql:update dataSource="${database}" var="delete">
    DELETE FROM employees WHERE id = ?
    <sql:param value="${empID}"/>
</sql:update>

<sql:query dataSource="${database}" var="select">
    SELECT * FROM employees;
</sql:query>

<div style="text-align: center;">
    <h1>DELETE Operation (Removing employee with ID 104)</h1>
</div>

<table>
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var="row" items="${select.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.first_name}"/></td>
            <td><c:out value="${row.last_name}"/></td>
            <td><c:out value="${row.age}"/></td>
        </tr>
    </c:forEach>
</table>

<c:set var="empID" value="102"/>

<sql:update dataSource="${database}" var="update">
    UPDATE employees SET age = '34' WHERE id = ?
    <sql:param value="${empID}"/>
</sql:update>

<sql:query dataSource="${database}" var="select">
    SELECT * FROM employees;
</sql:query>

<div style="text-align: center;">
    <h1>UPDATE Operation (Updating employee age with ID 102)</h1>
</div>

<table>
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var="row" items="${select.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.first_name}"/></td>
            <td><c:out value="${row.last_name}"/></td>
            <td><c:out value="${row.age}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

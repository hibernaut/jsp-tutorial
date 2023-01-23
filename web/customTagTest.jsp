<%@ taglib prefix="ex" uri="/WEB-INF/custom.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 22.01.2023
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>A Sample Custom Tag</title>
</head>
<body>
<ex:customTag message="This is message from the first tag!"/>
<br>
<ex:customTag>This is message from the second tag!</ex:customTag>
</body>
</html>

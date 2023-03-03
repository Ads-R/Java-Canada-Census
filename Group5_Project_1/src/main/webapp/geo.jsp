<%--
  Created by IntelliJ IDEA.
  User: adssr
  Date: 2023-03-02
  Time: 2:09 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Geo</title>
</head>
<body>
<h1>Level ${level} Geographical Areas</h1>
<form action="<%= request.getContextPath()%>/geo">
    <label for="levelValue">Select a Geo Level</label>
    <select name="levelValue" id="levelValue">
        <option value="0">Level 0</option>
        <option value="1">Level 1</option>
        <option value="2">Level 2</option>
        <option value="3">Level 3</option>
    </select>
    <input type="submit" value="Get List">
</form>
</br></br>
<form action="<%= request.getContextPath()%>/age" method="GET">
    <input type="hidden" name="yearId" value="1">
    <input type="submit" value="Age List">
</form>

<table>
    <tr>
        <th>Geographic Area Id</th>
        <th>Code</th>
        <th>Level</th>
        <th>Name</th>
        <th>Alternative Code</th>
    </tr>
    <c:forEach var="item" items="${geos}">
        <tr>
            <td>${item.id}</td>
            <td>${item.code}</td>
            <td>${item.level}</td>
            <td>${item.name}</td>
            <td>${item.alternativeCode}</td>
            <td><a href="<%= request.getContextPath()%>/geoDetails?id=${item.id}">Details</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

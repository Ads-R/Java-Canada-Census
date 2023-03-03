<%--
  Created by IntelliJ IDEA.
  User: adssr
  Date: 2023-03-02
  Time: 6:14 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Age List</title>
</head>
<body>
<h1>Canada Age List for census year ${censusYear}</h1>

<form action="<%= request.getContextPath()%>/age">
    <label for="yearId">Select a Census Year</label>
    <select name="yearId" id="yearId">
        <option value="1">2021 census</option>
        <option value="2">2016 census</option>
    </select>
    <input type="submit" value="Get List">
</form>
</br></br>

<form action="<%= request.getContextPath()%>/geo" method="GET">
    <input type="hidden" name="levelValue" value="0">
    <input type="submit" value="Geo List">
</form>

<table>
    <tr>
        <th>Age Id</th>
        <th>Description</th>
        <th>Male Population</th>
        <th>Female Population</th>
    </tr>
    <c:forEach var="item" items="${ageList}">
        <tr>
            <td>${item.id}</td>
            <td>${item.ageGroup}</td>
            <td>${item.male}</td>
            <td>${item.female}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

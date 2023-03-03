<%--
  Created by IntelliJ IDEA.
  User: adssr
  Date: 2023-03-02
  Time: 5:31 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Geo Details</title>
</head>
<body>
<div>
    <h1><c:out value="${geoDetails.name}" />'s Details</h1>
    <label for="id">Geographic Area ID: </label>
    <p id="id" style="display: inline"><c:out value="${geoDetails.id}" /></p></br>
    <label for="code">Code: </label>
    <p id="code" style="display: inline"><c:out value="${geoDetails.code}" /></p></br>
    <label for="level">Level: </label>
    <p id="level" style="display: inline"><c:out value="${geoDetails.level}" /></p></br>
    <label for="name">Name: </label>
    <p id="name" style="display: inline"><c:out value="${geoDetails.name}" /></p></br>
    <label for="altCode">Alternative Code: </label>
    <p id="altCode" style="display: inline"><c:out value="${geoDetails.alternativeCode}" /></p></br>
    <label for="population">Population: </label>
    <p id="population" style="display: inline"><c:out value="${geoDetails.totalPopulation}" /></p></br>
</div>
<form action="<%= request.getContextPath()%>/geo" method="GET">
    <input type="hidden" name="levelValue" value="${geoDetails.level}">
    <input type="submit" value="Go Back" />
</form>

</body>
</html>

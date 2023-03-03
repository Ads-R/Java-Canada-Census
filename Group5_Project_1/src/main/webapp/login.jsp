<%--
  Created by IntelliJ IDEA.
  User: adssr
  Date: 2023-03-02
  Time: 2:07 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div style="margin: auto; width: 20%; border: 4px black; padding: 10px">
  <h1>Login</h1>
  <p>${message}</p>
  <form action="<%= request.getContextPath()%>/login" method="post">
    <table>
      <tr>
        <td>Username: </td>
        <td><input type="text" name="username" /></td>
      </tr>
      <tr>
        <td>Password: </td>
        <td><input type="password" name="password" /></td>
      </tr>
      <tr></tr>
      <tr>
        <td style="padding-right: 5px"><input type="submit" value="Login" /></td>
      </tr>
    </table>
  </form>

</div>
</body>
</html>

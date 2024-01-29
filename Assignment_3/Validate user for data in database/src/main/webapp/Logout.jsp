<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout Page</title>
</head>
<body>
    <%
        session.invalidate();
    %>
    <p>You have been successfully logged out!</p>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
</head>
<body>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/college" user="root" password="Aman@734262" />
    <sql:update dataSource="${db}">
        delete from studentdata where rollno=<%= Integer.parseInt(request.getParameter("delete")) %>
    </sql:update>
    <c:redirect url="StudentMaster.jsp"></c:redirect>
</body>
</html>

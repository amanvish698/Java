<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Master</title>
</head>
<body>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/college" user="root" password="Aman@734262" />
    <sql:query dataSource="${db}" var="rs">
        select * from studentdata;
    </sql:query>
    <table border="2">
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Semester</td>
            <td>Course</td>
        </tr>
        <form method="post" action="Deletestudent.jsp">
            <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <td><c:out value="${table.rollno }"></c:out></td>
                    <td><c:out value="${table.name }"></c:out></td>
                    <td><c:out value="${table.semester }"></c:out></td>
                    <td><c:out value="${table.course }"></c:out></td>
                    <td>
                        <button type="submit" name="delete" value="${table.rollno }">Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </form>
    </table>
</body>
</html>

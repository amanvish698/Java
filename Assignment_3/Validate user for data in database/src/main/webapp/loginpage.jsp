<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
</head>
<body>
    <%
        String I_name = request.getParameter("name");
        String I_Password = request.getParameter("pass");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "Aman@734262");
        String query = "select * from student where name=? and pass=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, I_name);
        ps.setString(2, I_Password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            session.setAttribute("name", I_name);
            response.sendRedirect("Dashboard.jsp");
        } else {
            response.sendRedirect("loginpage.jsp");
        }
    %>
</body>
</html>
	
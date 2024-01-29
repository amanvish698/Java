<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <%
        if(session.getAttribute("name") != null) {
    %>
    <h1 style="text-align:center">Welcome to my page "<%=session.getAttribute("name")%>"</h1>
    <br>
    <a style="display: block;text-align:center" href="Logout.jsp">Click here to Logout</a>
    <%
        } else {
            response.sendRedirect("Login.jsp");
        }
    %>
</body>
</html>

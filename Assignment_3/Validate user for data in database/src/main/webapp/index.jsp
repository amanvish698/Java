<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <fieldset style="width:30%; border:3px solid black">
        <legend>Login</legend>
        <form action="loginpage.jsp" method="post">
            <table>
                <tr>
                    <td>User Name:</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="pass"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"/></td>
                </tr>
            </table>
        </form>
    </fieldset>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan Calculator</title>
</head>
<body>
    <h1>Loan Calculator</h1>
    <form action="result.jsp" method="post">
        Principal Loan Amount: <input type="number" name="principal" required><br><br>
        Period of Time (in years): <input type="number" name="years" required><br><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
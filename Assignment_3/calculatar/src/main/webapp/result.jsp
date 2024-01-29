<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Interest Calculation Results</title>
</head>
<body>
    <h1>Interest Calculation Results</h1>
    <%
        int principal = Integer.parseInt(request.getParameter("principal"));
        int years = Integer.parseInt(request.getParameter("years"));
        double interestRate;
        double totalInterestPaid = 0;

        if (years >= 1 && years <= 7) {
            interestRate = 5.35;
        } else if (years >= 8 && years <= 15) {
            interestRate = 5.5;
        } else {
            interestRate = 5.75;
        }

        double interestPaid = principal * interestRate / (years * 12);
    %>
    <p>Principal = <%= principal %></p>
    <p>Years = <%= years %></p>
    <p>Interest = <%= interestRate %></p>
    <p>Total Interest Paid: $<%= interestPaid %></p>
</body>
</html>
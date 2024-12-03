<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .result-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Login Result</h2>
        <p>
            <% 
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (username.equals("admin") && password.equals("admin123")) {
            %>
                Welcome, <strong><%= username %></strong>! You have successfully logged in.
            <% 
                } else { 
            %>
                Invalid username or password. Please try again.
            <% 
                } 
            %>
        </p>
    </div>
</body>
</html>

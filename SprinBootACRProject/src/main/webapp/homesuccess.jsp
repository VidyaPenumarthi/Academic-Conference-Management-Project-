<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Success - Conference Portal</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            box-sizing: border-box;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            padding: 40px 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            max-width: 500px;
            width: 100%;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            margin: 20px 0;
        }
        .cta-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            transition: background-color 0.3s;
        }
        .cta-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Successful</h1>
        <p>Welcome back to the Conference Portal. You are now logged in.</p>
        <a href="${pageContext.request.contextPath}/addconference" class="cta-button">ADD Conferences</a>
    </div>
</body>
</html>

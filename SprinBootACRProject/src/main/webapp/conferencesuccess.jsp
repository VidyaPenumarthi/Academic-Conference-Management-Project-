<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conference Submission Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .message-container {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }
        .message-container h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .message-container p {
            font-size: 16px;
            color: #333;
            margin: 10px 0;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            display: inline-block;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Conference Submission Successful</h1>
        <p>${message}</p>
        <a href="${pageContext.request.contextPath}/viewconferences" class="button">View Conferences</a>
        <a href="${pageContext.request.contextPath}/" class="button" style="margin-top: 10px;">Back to Home</a>
    </div>
</body>
</html>

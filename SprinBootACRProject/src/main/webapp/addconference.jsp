<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Conference - Conference Portal</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .navbar {
            background-color: #007bff;
            padding: 10px 20px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }
        .navbar a:hover {
            text-decoration: underline;
        }
        .hero {
            text-align: center;
            margin: 20px 0;
        }
        .hero h1 {
            color: #007bff;
            margin: 0;
            font-size: 2.5em;
            display: inline-block;
            padding: 10px;
            border-bottom: 2px solid #007bff;
        }
        .form-container {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            width: 100%;
            max-width: 500px;
            margin: auto;
        }
        .form-group {
            margin-bottom: 15px;
            display: flex;
            flex-direction: column;
        }
        .form-group label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        .form-group input,
        .form-group textarea,
        .form-group select {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            width: 100%;
        }
        .form-group input[type="text"],
        .form-group input[type="email"] {
            height: 35px;
        }
        .form-group textarea {
            resize: vertical;
            min-height: 80px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/">Home</a>
         <a href="contactus.jsp">Contact Us</a>
          <a href="aboutus.jsp">About Us</a>
       
    </div>

    <div class="hero">
        <h1>Submit Your Conference</h1>
    </div>

    <div class="form-container">
        <form action="${pageContext.request.contextPath}/submitConference" method="post">
            <div class="form-group">
                <label for="authorName">Author Name:</label>
                <input type="text" id="authorName" name="authorName" required>
            </div>
            <div class="form-group">
                <label for="authorEmail">Author Email:</label>
                <input type="email" id="authorEmail" name="authorEmail" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="paperTitle">Paper Title:</label>
                <input type="text" id="paperTitle" name="paperTitle" required>
            </div>
            <div class="form-group">
                <label for="paperAbstract">Paper Abstract:</label>
                <textarea id="paperAbstract" name="paperAbstract" required></textarea>
            </div>
            <div class="form-group">
                <label for="filePath">File Path:</label>
                <input type="text" id="filePath" name="filePath">
            </div>
            <button type="submit">Submit Conference</button>
        </form>
    </div>
</body>
</html>

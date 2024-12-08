<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light background color */
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .navbar {
            background-color: #00FFFF; /* Aqua color */
            padding: 15px;
            text-align: center;
            width: 100%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #007C7C; /* Darker shade on hover */
        }

        h2 {
            color: #2E8B57; /* Attractive color for the title */
            margin-top: 80px; /* Space for fixed navbar */
            font-size: 2.5em;
        }

        p {
            font-size: 1.2em;
            text-align: center;
            max-width: 600px; /* Constrain paragraph width */
            margin: 20px 0;
            padding: 15px;
            background-color: white; /* White background for message */
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        a.login-button {
            background-color: #00FFFF; /* Aqua color */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1.2em;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        a.login-button:hover {
            background-color: #007C7C; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="login"> Login</a>
    </div>
    <h2>Registration Successful!</h2>
    <p><%= request.getAttribute("message") != null ? request.getAttribute("message") : "You have registered successfully. Please log in to your account to start donating and making a difference!" %></p>
    <a class="login-button" href="login">Login Now</a>
</body>
</html>

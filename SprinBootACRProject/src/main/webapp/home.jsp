<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Conference Portal</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        .navbar {
            background-color: #007bff;
            padding: 15px;
            text-align: center;
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
            background-color: #ffffff;
            padding: 50px 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .hero h1 {
            color: #007bff;
            font-size: 48px;
            margin: 0;
        }
        .hero h2 {
            color: #555;
            font-size: 24px;
            margin: 10px 0;
        }
        .blinking {
            animation: blink 1s step-end infinite;
        }
        @keyframes blink {
            from, to {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 30px 20px;
        }
        .feature {
            background-color: #ffffff;
            width: 30%;
            margin: 15px 0;
            padding: 20px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .feature img {
            width: 100px;
            height: 100px;
            margin-bottom: 15px;
        }
        .feature h3 {
            color: #007bff;
            margin-bottom: 10px;
        }
        .feature p {
            color: #666;
        }
        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .cta {
            text-align: center;
            padding: 40px 20px;
            background-color: #007bff;
            color: white;
        }
        .cta h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        .cta button {
            background-color: #fff;
            color: #007bff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }
        .cta button:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/register">Register</a>
        <a href="${pageContext.request.contextPath}/login">Login</a>
       
       
        <a href="aboutus.jsp">About Us</a>
        <a href="contactus.jsp">Contact Us</a>
        
    </div>

    <div class="hero">
        <div>
            <h1 class="blinking">Welcome to the Conference Portal</h1>
            <h2>Connect, Share, and Learn</h2>
        </div>
    </div>

    <p style="text-align: center; padding: 0 20px; color: #555;">Explore a world of research and academic discussions.</p>

    <div class="features">
        <div class="feature">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbsnKOmOFsP0K5i0gxgg2Xmtltsga1Sj8e3A&s" alt="Add Conference Icon">
            <h3>Add Conference</h3>
            <p>Submit your conference papers for review and participation.</p>
        </div>
        <div class="feature">
            <img src="https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/b94f83ca-9cc8-4d3b-bf5a-7577e02b68ec/77fc67c5-3a0d-4e3a-9899-3c035655d95e.png"alt="View Conferences Icon">
            <h3>View Conferences</h3>
            <p>Browse all available conferences and their details.</p>
        </div>
        <div class="feature">
            <img src="https://pbs.twimg.com/media/Gcb4fAcbkAA3Mg3.jpg" alt="Update Conference Icon">
            <h3>Update Conference</h3>
            <p>Edit your conference submissions with ease.</p>
        </div>
    </div>

    <div class="cta">
        <h2>Get started with your conference submissions now!</h2>
        <button onclick="window.location.href='${pageContext.request.contextPath}/addconference'">Start Now</button>
    </div>
</body>
</html>

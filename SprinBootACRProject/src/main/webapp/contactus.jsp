<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto Slab', serif;
            
        }

        .hero {
            width: 100%;
            height: 100vh;
            background-image: linear-gradient(rgba(12,3,51,0.3), rgba(12,3,51,0.3));
            position: relative;
            padding: 0 5%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        nav {
            width: 100%;
            position: absolute;
            top: 0%;
            left: 0%;
            padding: 20px 8%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav .logo {
            width: 80px;
        }

        nav ul li {
            list-style: none;
            display: inline-block;
            margin-left: 40px;
        }

        nav ul li a {
            text-decoration: none;
            color: #000; /* Changed text color to black */
            font-size: 17px;
        }

        .content {
            text-align: center;
        }

        .content h1 {
            font-size: 120px;
            color: #000; /* Changed text color to black */
            font-weight: 600;
            transition: 0.5s;
        }

        .content h1:hover {
            -webkit-text-stroke: 2px #000; /* Changed text stroke color to black */
            color: transparent;
        }

        .content a {
            text-decoration: none;
            display: inline-block;
            color: #000; /* Changed text color to black */
            font-size: 24px;
            border: 2px solid #000; /* Changed border color to black */
            padding: 14px 70px;
            border-radius: 50px;
            margin-top: 20px;
        }

        .back-vedio {
            position: absolute;
            right: 0;
            bottom: 0;
            z-index: -1;
        }

        @media (min-aspect-ratio: 16/9) {
            .back-vedio {
                width: 100%;
                height: auto;
            }
        }

        @media (max-aspect-ratio: 16/9) {
            .back-vedio {
                width: auto;
                height: 100%;
            }
        }

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        html,
        body {
            font-family: 'Roboto Slab', serif;
            scroll-behavior: smooth;
        }

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        .container {
            max-width: 80%;
            margin: auto;
        }

        .head_container {
            max-width: 90%;
            margin: auto;
        }

        /--------------header--------/
        header {
            height: 8vh;
        }

        .logo img {
            width: 120px;
        }

        header nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-top: 20px;
        }

        .hambuger {
            display: none;
        }

        .bar {
            display: block;
            width: 25px;
            height: 3px;
            margin: 5px auto;
            transition: all 0.3s ease-in-out;
            background-color: black;
        }

        header ul {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header ul li {
            margin-left: 3rem;
        }

        header ul li a {
            font-size: 1.2rem;
            font-weight: 400;
            color: black; /* Changed text color to black */
            transition: 0.5s;
        }

        header ul li a:hover {
            color: #C1B086;
        }

        @media only screen and (max-width: 768px) {
            header ul {
                display: block;
                position: fixed;
                left: -100%;
                top: 5rem;
                flex-direction: column;
                background-color: #fff;
                width: 100%;
                border-radius: 10px;
                text-align: center;
                transition: 0.5s;
                box-shadow: 0 10px 27px rgba(0, 0, 0, 0.05);
                z-index: 20;
            }

            header ul.active {
                left: 0%;
            }

            header ul li {
                margin: 2.5rem 0;
            }

            header ul li a {
                color: black; /* Changed text color to black */
            }

            .hambuger {
                display: block;
                cursor: pointer;
            }

            .hambuger.active .bar:nth-child(2) {
                opacity: 0;
            }

            .hambuger.active .bar:nth-child(1) {
                transform: translateY(8px) rotate(45deg);
            }

            .hambuger.active .bar:nth-child(3) {
                transform: translateY(-8px) rotate(-45deg);
            }
        }

    @import url('https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Pretty Stuff */
    .contact-form-container {
      background: #F4F3F3;
      font-family: 'Lato', sans-serif;
      width: 800px;
      display: grid;
      grid-template-columns: 1fr 1fr 1fr 1fr;
      grid-template-rows: 0.5fr 0.5fr 2fr;
      grid-template-areas: "contact-us header header header" "contact-us address phone email" "contact-us contact-form contact-form contact-form";
    }

    .contact-us {
      position: relative;
      width: 250px;
      background: #C3E0EC;
      overflow: hidden;
      grid-area: contact-us;
    }

    .contact-us:before {
      position: absolute;
      content: "";
      bottom: -50px;
      left: -100px;
      height: 250px;
      width: 400px;
      background: #F8B7D8;
      transform: rotate(25deg);
    }

    .contact-us:after {
      position: absolute;
      content: "";
      bottom: -80px;
      right: -100px;
      height: 270px;
      width: 400px;
      background: #9ED8EB;
      transform: rotate(-25deg);
    }

    .contact-header {
      color: white;
      position: absolute;
      transform: rotate(-90deg);
      top: 120px;
      left: -40px;
    }

    .contact-header h1 {
      font-size: 1.5rem;
    }

    .social-bar {
      position: absolute;
      bottom: 20px;
      left: 75px;
      z-index: 1;
      width: 100px;
    }

    .social-bar ul {
      list-style-type: none;
    }

    .social-bar ul li {
      display: inline-block;
      color: white;
      width: 25px;
      height: 25px;
      line-height: 25px;
      text-align: center;
      margin-right: -4px;
      font-size: 1.2rem;
    }

    .header {
      text-align: center;
      padding: 20px 0;
      color: #444;
      grid-area: header;
    }

    .header h1 {
      font-weight: normal;
    }

    .header h2 {
      margin-top: 10px;
      font-weight: 300;
    }

    .address, .email, .phone {
      text-align: center;
      padding: 20px 0;
      color: #444;
    }

    .address {
      grid-area: address;
    }

    .phone {
      grid-area: phone;
    }

    .email {
      grid-area: email;
    }

    .address h3, .email h3, .phone h3 {
      font-size: 1rem;
      font-weight: 300;
    }

    .address i, .email i, .phone i {
      color: #F8B7D8;
      font-size: 1.7rem;
      margin-bottom: 20px;
    }

    form {
      position: relative;
      width: 440px;
      margin: 0 auto;
      padding: 20px;
      box-shadow: 0 0 5px rgba(0,0,0,.1);
      background: white;
    }

    form input, form textarea {
      background: white;
      display: block;
      margin: 20px auto;
      width: 100%;
      border: 0;
    }

    form input {
      height: 40px;
      line-height: 40px;
      outline: 0;
      border-bottom: 1px solid rgba(68,68,68,.3);
      font-size: 1rem;
      color: rgba(68,68,68,.8);
    }

    form textarea {
      border-bottom: 1px solid rgba(68,68,68,.3);
      resize: none;
      outline: none;
      font-size: 1rem;
      font-family: Lato;
      color: rgba(68,68,68,.8);
    }

    form button {
      position: absolute;
      display: block;
      height: 40px;
      width: 250px;
      left: 95px;
      border: 0;
      border-radius: 20px;
      bottom: -20px;
      background: #9ED8EB;
      color: white;
      font-size: 1.1rem;
      font-weight: 300;
      outline: none;
    }

    .contact-form {
      grid-area: contact-form;
      padding-bottom: 40px;
    }

    /* Layout Stuff */
    body {
      background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/38816/image-from-rawpixel-id-2042508-jpeg.jpg");
      height: 100vh;
      width: 100vw;
      position: relative;
      background-size: cover;
      background-repeat: no-repeat;
      display: grid;
      justify-items: center;
      align-items: center;
    }

  </style>
</head>
<body>
    <jsp:include page="home.jsp"></jsp:include>

<div class="contact-form-container">
  <div class="contact-us">
    <div class="contact-header">
      <h1>&#9135;&#9135;&#9135;&#9135;&nbsp;&nbsp;CONTACT US</h1>
    </div>
    <div class="social-bar">
      <ul>
        <li><i class="fab fa-facebook-f"></i></li>
        <li><i class="fab fa-twitter"></i></li>
        <li><i class="fab fa-instagram"></i></li>
        <li><i class="fab fa-dribbble"></i></li>
      </ul>
    </div>
  </div>
  <div class="header">
    <h1>Let's Get Started</h1>
    <h2>Contact us to start your next project!</h2>
  </div>
  <div class="address">
    <i class="fas fa-map-marker-alt"></i>    
    <h3>KL University</h3>
  </div>
  <div class="phone">
    <i class="fas fa-phone-alt"></i>
    <h3>7207037959</h3>
  </div>
  <div class="email">
    <i class="fas fa-envelope"></i>
    <h3>bikkinasrikeerthi@gmail.com</h3>
  </div>
  <div class="contact-form">
    <form action="https://formsubmit.co/bikkinasrikeerthi@gmail.com" method="POST">
      <input type="text" name="name"  required placeholder="Name">
      <input type="email"name="email" required placeholder="Email" >
      <textarea rows="msg" name="Quires" required placeholder="Any Quires..." ></textarea>
      <button type="submit">SEND</button>
    </form>
  </div>
</div>

<script>
  document.getElementById('contact-form').addEventListener('submit', function(e) {
    e.preventDefault();
    alert('Form submitted successfully!');
    // You can handle form submission here (e.g., send data to a server)
    e.target.reset(); // Clears the form fields
  });
</script>

</body>
</html>


</body>
</html>
<%-- 
    Document   : register
    Created on : Oct 30, 2021, 10:16:07 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        crossorigin="anonymous">
    <style>
        * {
            box-sizing: border-box
        }

        form {
            margin-top: 100px;
        }

        /* Full-width input fields */
        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus,
        input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
            opacity: 1;
        }

        .signupbtn {
            float: left;
            width: 50%;
        }

        .container {
            padding: 16px;
            width: 500px;
            margin: auto auto;
            background-color: white;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {

            .signupbtn {
                width: 100%;
            }
        }

        .navbar {
            overflow: hidden;
            padding: 10px 10px;
            opacity: 1;
            transition: 0.4s;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 99;
        }

        @media screen and (max-width: 580px) {
            #navbar {
                padding: 20px 10px !important;
            }

            #navbar a {
                float: none;
                display: block;
                text-align: left;
            }

            #navbar-right {
                float: none;
            }
        }

        a#logo {
            font-size: 30px;
            font-weight: bold;
            transition: 0.4s;
            color: black
        }

        body {
            background-color: #f4f4f4;
        }

        navbar {
            overflow: hidden;
            padding: 10px 10px;
            opacity: 1;
            transition: 0.4s;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 99;
        }

        @media screen and (max-width: 580px) {
            #navbar {
                padding: 20px 10px !important;
            }

            #navbar a {
                float: none;
                display: block;
                text-align: left;
            }

            #navbar-right {
                float: none;
            }
        }

        a#logo {
            font-size: 30px;
            font-weight: bold;
            transition: 0.4s;
            color: black;
        }

        @media screen and (max-width: 580px) {
            .navbar {
                padding: 20px 10px !important;
            }

            .navbar a {
                float: none;
                display: block;
                text-align: left;
            }
        }
    </style>
</head>

<body>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires","0");
        %>
    <header>
        <nav class="navbar navbar-expand-md   fixed-top">
            <!-- Brand -->
            <a id="logo" class="navbar-brand" href="#">Task Manager</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </header>
    <form action="<%=request.getContextPath() %>/UserController" style="border:1px solid #ccc">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="username"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="username" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>


            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </form>
</body>

</html>
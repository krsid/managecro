<%-- 
    Document   : login
    Created on : 29 Oct, 2021, 6:53:30 AM
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
         crossorigin="anonymous">
    <link rel="stylesheet" href="login.css">
    <style>
        form {
        border: 3px solid #f1f1f1;
    }

    body{
        background-color: #f4f4f4;
    }

    /* Full-width inputs */
    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
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
    }

    /* Add a hover effect for buttons */
    button:hover {
        opacity: 0.8;
    }



    /* Add padding to containers */
    .container {
        padding: 16px;
        width: 500px;
        background-color: white;
    }

    /* The "Forgot password" text */
    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }

    }

    section {
        margin-top: 100px;
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

    <header>
        <nav class="navbar navbar-expand-md   fixed-top">
            <!-- Brand -->
            <a id="logo" class="navbar-brand" href="#">Task Manager</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </header>
    <section>
        <div class="container">
            <h1>Login</h1>
        </div>
        <form action="<%= request.getContextPath()%>/LoginController" method="post">


            <div class="container">

                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>
                

                <button type="submit">Login</button>

            </div>

        </form>
    </section>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
</body>

</html>
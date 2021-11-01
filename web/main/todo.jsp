<%-- 
    Document   : todo
    Created on : Oct 30, 2021, 9:15:51 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TODO Page</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    

    <style>
        div.img-id {
            max-width: 100%;
            height: 100vh;
            margin-right: 0px;           
        }

        img {
            display: block;
            width: 100%;
            height: 100vh;           
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

            .container {
            margin-top: 5rem;
            position: absolute;
            top: 4rem;
            left: 20px;
            right: 20px;
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
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand text-dark" href="#">TaskManagement</a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath()%>/main/create.jsp">Create<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath()%>/TodoController">AllTask<span
                                class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active" style="float: right">
                        <a class="nav-link" href="<%=request.getContextPath()%>/LogoutController">Logout<span
                                class="sr-only">(current)</span></a>
                    </li>
                </ul>
                   

            </div>
        </nav>
    </header>
    <section>
    <div class="img-id"><img src="https://steemitimages.com/DQmUHicihmPz2m8pfewd2LEMs2aoLLB2SWr5G3BBdsn48dx/1.png"
            alt=""></div>
    </section>
    <section>
        <div class="container">
            <h1>Create a Todo</h1>
            <p>Create as many task as you want...</p>
            <h1>View task</h1>
            <p>View task that you added...</p>
        </div>
    </section>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
    </script>
</body>

</html>
<%-- 
    Document   : create
    Created on : Oct 30, 2021, 12:19:23 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <style>
        .row,
        .amedement {
            margin: 150px auto;
            align-items: center;
            justify-content: center;


        }

        body {
            background-color: #f4f4f4;
        }

        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
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
            margin-top: 100px;
        }


        a#logo {
            font-size: 30px;
            font-weight: bold;
            transition: 0.4s;
            color: black;
        }
    </style>
</head>

<body>


    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand text-dark" href="<%= request.getContextPath() %>/main/todo.jsp">TaskManagement</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
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



        <div class="row" style="justify-content: center">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Task</h5>
                        <form action="<%=request.getContextPath()%>/TodoController" method="post">
                            <input name="title" type="text" placeholder="Enter title"><br>
                            <input name="description" type="text" placeholder="Enter description ">
                            <button type="submit" class="btn btn-primary">Add</button>
                        </form>

                    </div>
                </div>
            </div>
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
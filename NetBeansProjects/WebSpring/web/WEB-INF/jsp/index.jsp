<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de Vista Spring</title>
        <!-- CSS -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
        <link rel="icon" href="<c:url value="/resources/images/favicon.png" />" type="image/png" />
        <style>
            body {
                background-image: url("<c:url value="/resources/images/bgdHomeG.jpg" />");
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid" style="margin-top:3.5em;">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
                        <img src="<c:url value="/resources/images/brave-logo.png" />" width="28.671" height="33.668"/>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="navbar-toggler-icon"></span>
                        </button> <a class="navbar-brand" href="#">CRUD</a>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Acerca de..</a>
                                </li>
                            </ul>
                            <form class="form-inline" method="GET" charset="UTF-8">
                                <input class="form-control mr-sm-2" type="text" /> 
                                <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">
                                    Buscar
                                </button>
                            </form>
                            <ul class="navbar-nav ml-md-auto">
                                <li class="nav-item active">
                                    <a class="btn btn-success" href="login.htm">Iniciar Sesión</a>
                                </li>
                                <li class="nav-item active" >
                                    <a class="btn btn-secondary" style="margin-left: 10px;" href="registro.htm">Registrate</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="jumbotron">
                        <h2>
                            ¡Bienvenido a la web!
                        </h2>
                        <p>
                            Esta es una plantilla para marketing simple o sitio web informativo.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <img src="<c:url value="/resources/images/brave-logo.png" />" width="65.4" height="76.8"/>
                </div>
                <div class="col-md-8">
                    <h3 style="color: white;"><strong>Noticias</strong></h3>
                    <div class="carousel slide" id="carousel-548716">
                        <ol class="carousel-indicators">
                            <li data-slide-to="0" data-target="#carousel-548716" class="active">
                            </li>
                            <li data-slide-to="1" data-target="#carousel-548716">
                            </li>
                            <li data-slide-to="2" data-target="#carousel-548716">
                            </li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" alt="Carousel Bootstrap First" src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg"/>
                                <div class="carousel-caption">
                                    <h4>
                                        Sociales
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" alt="Carousel Bootstrap Second" src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg" />
                                <div class="carousel-caption">
                                    <h4>
                                        Deportes
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" alt="Carousel Bootstrap Third" src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg" />
                                <div class="carousel-caption">
                                    <h4>
                                        Arte y musica
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                        </div> <a class="carousel-control-prev" href="#carousel-548716" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-548716" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
                    </div>

                </div>
                <div class="col-md-2" style="color: white;">
                    <h2>
                        Encabezado
                    </h2>
                    <p>
                        Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                    </p>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/jquery.min.js" />" ></script>
        <script src="<c:url value="/resources/js/popper.min.js" />" ></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
    </body>
</html>
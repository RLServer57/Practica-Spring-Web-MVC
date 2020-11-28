<%-- 
    Document   : nosotros
    Created on : 23 oct 2020, 11:03:17
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta charset="UTF-8">
        <title>Iniciar sesión</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/fontawesome.min.css" />" />
        <link rel="stylesheet" href="<c:url value="/resources/css/all.min.css" />" />
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
        <link rel="icon" href="<c:url value="/resources/images/favicon.png" />" type="image/png" />
        <style>
            body {
                background-repeat: no-repeat;
                background-image: url("<c:url value="/resources/images/backLoginReg.jpg" />");
                background-position: center;
                background-size: cover;
                background-attachment: fixed;
            }

            .card-container.card {
                height: 100%;
                max-width: 500px;
                padding: 10px 30px;

            }
            .card {
                background-color: #F7F7F7;
                /* just in case there no content*/
                padding: 20px 25px 30px;
                margin-top: 4%;
                margin-bottom: 4%;
                margin-left: auto;
                margin-right: auto;
                /* shadows and rounded borders */
                -moz-border-radius: 10px;
                -webkit-border-radius: 10px;
                border-radius: 10px;
                -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="card card-container">
                <form:form role="form" method="POST" commandName="logadmin">
                    <div class="form-group">
                        <center><h1>Iniciar sesión</h1></center>
                        <center><img src="<c:url value="/resources/images/user_icon.png" />" width="120" height="120"/></center><br/>
                            <form:errors path="*" element="div" class="alert alert-danger"/>
                        <p>
                            <form:label path="nombre">Nombre:</form:label>
                            <form:input path="nombre" type="text" name="nombre" id="nombre" class="form-control" />
                        </p>
                        <form:label path="contraseña">Contraseña:</form:label>
                            <div class="input-group">
                            <form:input path="contraseña" id="txtPassword" type="password" class="form-control" />
                            <div class="input-group-append">
                                <form:button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword()"><i class="fas fa-eye-slash icon"></i></form:button>
                                </div>
                            </div><br/>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" /> Guardar sesión
                                </label>
                            </div>
                            <center><form:button type="submit" class="btn btn-primary btn-block">Iniciar sesión</form:button></center>
                        </div>
                </form:form>
            </div>
        </div>

    <center><i style="color: white; ">2020 Copyright, Derechos reservados.</i></center>

    <script type="text/javascript" >
        function mostrarPassword() {
            var cambio = document.getElementById("txtPassword");
            if (cambio.type === "password") {
                cambio.type = "text";
                $('.icon').removeClass('fas fa-eye-slash').addClass('fas fa-eye');
            } else {
                cambio.type = "password";
                $('.icon').removeClass('fas fa-eye').addClass('fas fa-eye-slash');
            }
        }
    </script>
    <script src="<c:url value="/resources/js/jquery.min.js" />" ></script>
    <script src="<c:url value="/resources/js/popper.min.js" />" ></script>
    <script src="<c:url value="/resources/js/fontawesome.min.js" />" ></script>
    <script src="<c:url value="/resources/js/all.min.js" />" ></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
</body>
</html>

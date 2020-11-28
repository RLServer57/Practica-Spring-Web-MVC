<%-- 
    Document   : listo
    Created on : 27 oct 2020, 12:03:20
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta charset="UTF-8">
        <title>Registro de usuario</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/estilos.css" />" />
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
        <link rel="icon" href="<c:url value="/resources/images/favicon.png" />" type="image/png" />
    </head>
    <body>
        <div class="jumbotron jumbotron-fluid">
            <center><h1>Listo, se ha registrado con los siguientes datos:</h1>
                <hr>
            <ul class="list-group list-inline">
                <li>Nombre: <c:out value="${nombre}" /></li>
                <li>Email: <c:out value="${correo}" /></li>
                <li>Pais: <c:out value="${pais}" /></li>
            </ul>
            <img src="<c:url value="/resources/images/ready_icon.png" />" />
            </center>
        </div>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
        <script src="<c:url value="/resources/js/jquery.min.js" />" ></script>
        <script src="<c:url value="/resources/js/popper.min.js" />" ></script>
        <script src="<c:url value="/resources/js/scripts.js" />" ></script>
    </body>
</html>

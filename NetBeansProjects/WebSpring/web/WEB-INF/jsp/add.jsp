<%-- 
    Document   : add
    Created on : 5 nov 2020, 13:23:27
    Author     : rodrigo
--%>
<%@taglib  prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta charset="UTF-8">
        <title>Agregar nuevo usuario</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
    </head>
    <body style="background-color: #212529;">
        <div class="container-fluid">
            <nav>
                <ol class="breadcrumb fixed-top">
                    <li class="breadcrumb-item">
                        <a href="list.htm">Regresar</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Agregar nuevo
                    </li>
                </ol>
            </nav>
            <div class="row" style="margin-top: 3.5em;;">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <center>
                        <h1 style="color: white;">
                            Ingresa los datos
                        </h1>
                    </center>
                    <form:form role="form" method="POST" commandName="usuarios" style="background-color: #E7E7E7; margin: 0 auto; padding: 60px;
                               max-width: 400px;">
                        <div class="form-group">
                            <form:errors path="*" element="div" class="alert alert-danger"/>
                            <p>
                                <form:label path="nombre">Nombre:</form:label>
                                <form:input path="nombre" type="text" class="form-control" />
                            </p>
                            <p>
                                <form:label path="correo">E-mail:</form:label>
                                <form:input path="correo" type="email" class="form-control" />
                            </p>
                            <p>
                                <form:label path="telefono">Telefono:</form:label>
                                <form:input path="telefono" type="number" class="form-control" />
                            </p>
                            <hr><!-- comment -->
                            <form:button class="btn btn-primary">Guardar<svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg></form:button>
                            </div>
                    </form:form>
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/jquery.min.js" />" ></script>
        <script src="<c:url value="/resources/js/popper.min.js" />" ></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
    </body>
</html>
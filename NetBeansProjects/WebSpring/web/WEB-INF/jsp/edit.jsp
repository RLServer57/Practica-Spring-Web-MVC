<%-- 
    Document   : edit
    Created on : 5 nov 2020, 18:10:02
    Author     : rodrigo
--%>
<%@taglib  prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta charset="UTF-8">
        <title>Editar datos del usuario</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
        <link rel="icon" href="<c:url value="/resources/images/favicon.png" />" type="image/png" />
    </head>
    <body style="background-color: #212529;">
        <div class="container-fluid">
            <nav>
                <ol class="breadcrumb fixed-top">
                    <li class="breadcrumb-item">
                        <a href="list.htm">Regresar</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Editar datos
                    </li>
                </ol>
            </nav>
            <div class="row" style="margin-top: 3.5em;;">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <center>
                        <h1 style="color: white;">
                            Modifique los datos
                        </h1>
                    </center>
                    <form:form role="form" method="POST" commandName="usuarios" style="background-color: #E7E7E7; margin: 0 auto; padding: 60px;
                               max-width: 400px;">
                        <div class="form-group">
                            <form:errors path="*" element="div" class="alert alert-danger"/>
                            <p>
                                <form:label path="nombre">Nombre:</form:label>
                                <form:input type="text" path="nombre" class="form-control" />
                            </p>
                            <p>
                                <form:label path="correo">E-mail:</form:label>
                                <form:input type="email" path="correo" class="form-control" />
                            </p>
                            <p>
                                <form:label path="telefono">Telefono:</form:label>
                                <form:input path="telefono" class="form-control" />
                            </p>
                            <hr><!-- comment -->
                            <form:button class="btn btn-primary">Guardar <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor">
                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
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

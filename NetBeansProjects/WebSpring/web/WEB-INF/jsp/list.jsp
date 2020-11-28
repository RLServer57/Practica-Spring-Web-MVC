<%-- 
    Document   : list
    Created on : 6 nov 2020, 17:30:22
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es-mx">
    <head>
        <meta charset="UTF-8">
        <title>Lista de usuarios</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
        <link rel="icon" href="<c:url value="/resources/images/favicon.png" />" type="image/png" />
    </head>
    <body style="background-color: #212529;">
        <div class="container-fluid">
            <nav>
                <ol class="breadcrumb fixed-top">
                    <li class="breadcrumb-item">
                        <a href="home.htm">Inicio</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Lista
                    </li>
                </ol>
            </nav>
            <div class="row" style="margin-top: 3.5em;">
                <div class="col-md-1">
                </div>
                <div class="col-md-10">
                    <h3 class="text-primary">
                        Usuarios registrados
                    </h3>
                    <p>
                        <a href="add.htm" class="btn btn-success">Agregar<svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg></a>
                    </p>

                    <table class="table table-bordered table-hover table-sm" style="background-color: white;">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Email</th>
                                <th>Telefono</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.id}" /></td>
                                    <td><c:out value="${dato.nombre}" /></td>
                                    <td><c:out value="${dato.correo}" /></td>
                                    <td><c:out value="${dato.telefono}" /></td>
                                    <td>
                                        <a class="btn btn-secondary" href="edit.htm?id=${dato.id}" >Editar<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                            </svg></a>

                                        <a class="btn btn-danger" href="delete.htm?id=${dato.id}" onclick="eliminar();">Eliminar<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                            </svg></a>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="col-md-1">
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function eliminar() {
                var opcion = window.confirm('¿Desea eliminar el usuario?');
                if (!opcion)
                    event.preventDefault();
                else
                    opcion.true;
            }
        </script>
        <script src="<c:url value="/resources/js/jquery.min.js" />" ></script>
        <script src="<c:url value="/resources/js/popper.min.js" />" ></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
    </body>
</html>
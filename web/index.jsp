<%-- 
    Document   : index
    Created on : Mar 6, 2021, 11:06:01 PM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="webservice.Estudiante"%>
<%@page import="Modelo.EstudianteService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header text-white">
                    <a href="Controlador?accion=add" class="btn btn-primary">Agregar Nuevo Estudiante</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Matricula</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Edad</th>
                                <th>Sexo</th>
                                <th>Contraseña</th>
                                <th>Carrera</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                EstudianteService e = new EstudianteService();
                                List<Estudiante> datos = e.listar();
                                for(Estudiante u:datos)
                                {
                            %>
                            <tr>
                                <td><%= u.getMatricula() %></td>
                                <td><%= u.getNombre()%></td>
                                <td><%= u.getApellido()%></td>
                                <td><%= u.getEdad()%></td>
                                <td><%= u.getSexo()%></td>
                                <td><%= u.getContrasena()%></td>
                                <td><%= u.getCarrera()%></td>
                                <td>
                                    <a href="Controlador?accion=editar&matricula=<%= u.getMatricula() %>" class="btn btn-warning">Editar</a>
                                    <a href="Controlador?accion=eliminar&matricula=<%= u.getMatricula() %>" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>

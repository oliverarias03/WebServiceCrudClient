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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header text-white">
                    <a href="Controlador?accion=add" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Agregar Nuevo"
                       ><i class="fa fa-user-plus fa-2x"></i></a>
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
                                <!--<th>Contraseña</th>-->
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
                                <!--<td><%= u.getContrasena()%></td>-->
                                <td><%= u.getCarrera()%></td>
                                <td>
                                    <a href="Controlador?accion=editar&matricula=<%= u.getMatricula() %>" 
                                       class="btn btn-outline-warning mr-1" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fa fa-edit fa-2x"></i></a>
                                       
                                    <a href="Controlador?accion=eliminar&matricula=<%= u.getMatricula() %>" 
                                       class="btn btn-outline-danger" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="fa fa-trash fa-2x"></i></a>
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

<%-- 
    Document   : index
    Created on : Mar 6, 2021, 11:06:01 PM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="webservice.Estudiante"%>
<%@page import="Modelo.EstudianteService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytag" prefix="s"%>
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
            <div class="jumbotron">
                <h1 class="display-5 text-center">Desarrollo con Tecnologia Open Source 2</h1>
                <p class="lead text-center">Oliver Arias - 20200813</p>
                <hr class="my-4">
                <h1 class="display-6 mb-3 text-center"><s:Hello name="${param['nombre']}" /></h1>
            </div>
            <div class="card">
                <div class="card-header text-white">
                    <a href="Controlador?accion=add" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Agregar Nuevo"
                       ><i class="fa fa-user-plus fa-2x"></i></a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead class="thead-dark">
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
                        
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                Coloca tu nombre: 
                <input type="text" placeholder="text" name="nombre" class="form-control mb-1">
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

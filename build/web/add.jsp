<%-- 
    Document   : add
    Created on : Mar 6, 2021, 11:32:36 PM
    Author     : User
--%>

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
                <div class="card-header">
                    <h5>Agregar Nuevo Estudiante</h5>
                </div>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Matricula</label>
                        <input type="number" name="txt_matricula" class="form-control">
                        <label>Nombre</label>
                        <input type="text" name="txt_nombre" class="form-control">
                        <label>Apellidos</label>
                        <input type="text" name="txt_apellidos" class="form-control">
                        <label>Edad</label>
                        <input type="number" name="txt_edad" class="form-control">
                        <label>Sexo</label>
                        <input type="text" name="txt_sexo" class="form-control">
                        <label>Contraseña</label>
                        <input type="text" name="txt_contrasena" class="form-control">
                        <label>Carrera</label>
                        <input type="text" name="txt_carrera" class="form-control">

                        <input type="submit" name="accion" value="Guardar" class="btn btn-secondary">
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

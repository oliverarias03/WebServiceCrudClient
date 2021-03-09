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
                    <h5>Agregar Nuevo Estudiante <a href="Controlador?accion=index" class="float-right btn btn-outline-secondary">Cancelar</a></h5>
                </div>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Matricula</label>
                        <input type="number" placeholder="number" name="txt_matricula" class="form-control mb-1">
                        <label>Nombre</label>
                        <input type="text" placeholder="text" name="txt_nombre" class="form-control mb-1">
                        <label>Apellidos</label>
                        <input type="text" placeholder="text" name="txt_apellidos" class="form-control mb-1">
                        <label>Edad</label>
                        <input type="number"  placeholder="number" name="txt_edad" class="form-control mb-1">
                        <label>Sexo</label>
                        <br>
<!--                        <input type="text" name="txt_sexo" class="form-control mb-1">-->
                        <INPUT TYPE="radio" NAME="radios" VALUE="M" CHECKED> M
                        <INPUT TYPE="radio" NAME="radios" VALUE="F" class="mb-2"> F
                        <br>
                        <label>Contraseña</label>
                        <input type="password" placeholder="text" name="txt_contrasena" class="form-control mb-1">
                        <label>Carrera</label>
                        <input type="text" placeholder="text" name="txt_carrera" class="form-control mb-3">

                        <input type="submit" name="accion" value="Guardar" class="btn btn-outline-info">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

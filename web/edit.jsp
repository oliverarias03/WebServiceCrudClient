<%-- 
    Document   : edit
    Created on : Mar 7, 2021, 12:08:10 AM
    Author     : User
--%>

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
                <div class="card-header">
                    <h5>Actualizar Estudiante <a href="Controlador?accion=index" class="float-right btn btn-outline-secondary">Cancelar</a></h5>
                </div>
                <%
                    int matricula = Integer.parseInt((String)request.getAttribute("idEst"));
                    EstudianteService es = new EstudianteService();
                    Estudiante e = es.listarId(matricula);
                    String checked = "";                    
                    String checked2 = "";

                    if(e.getSexo().equals("M"))
                    {
                        checked = "Checked";    
                    }
                    
                    if(e.getSexo().equals("F"))
                    {
                        checked2 = "Checked";    
                    }
                %>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Matricula</label>
                        <input type="number" name="txt_matricula" class="form-control mb-1" readonly value="<%= e.getMatricula() %>">
                        <label>Nombre</label>
                        <input type="text" name="txt_nombre" class="form-control mb-1" value="<%= e.getNombre()%>">
                        <label>Apellidos</label>
                        <input type="text" name="txt_apellidos" class="form-control mb-1" value="<%= e.getApellido()%>">
                        <label>Edad</label>
                        <input type="number" name="txt_edad" class="form-control mb-1"value="<%= e.getEdad()%>">
                        <label>Sexo</label>
                        <!--<input type="text" name="txt_sexo" class="form-control mb-1" value="<%= e.getSexo()%>">-->
                        <br>
                        <INPUT TYPE="radio" NAME="radios" VALUE="M" <%=checked%>> M
                        <INPUT TYPE="radio" NAME="radios" VALUE="F" class="mb-2" <%=checked2%>> F
                        <br>
                        <label>Contraseña</label>
                        <input type="password" name="txt_contrasena" class="form-control mb-1" value="<%= e.getContrasena()%>">
                        <label>Carrera</label>
                        <input type="text" name="txt_carrera" class="form-control mb-3" value="<%= e.getCarrera()%>">

                        <input type="submit" name="accion" value="Actualizar" class="btn btn-outline-info">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

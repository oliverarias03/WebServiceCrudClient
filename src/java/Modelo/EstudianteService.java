/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Estudiante;

/**
 *
 * @author User
 */
public class EstudianteService {

    public EstudianteService() {
    }
    

    public java.util.List<webservice.Estudiante> listar() {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.listar();
    }

    public String agregar(int matricula, java.lang.String nombre, java.lang.String apellido, int edad, java.lang.String sexo, java.lang.String contrasena, java.lang.String carrera) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.agregar(matricula, nombre, apellido, edad, sexo, contrasena, carrera);
    }

    public String editar(int matricula, java.lang.String nombre, java.lang.String apellido, int edad, java.lang.String sexo, java.lang.String contrasena, java.lang.String carrera) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.editar(matricula, nombre, apellido, edad, sexo, contrasena, carrera);
    }

    public Estudiante listarId(int matricula) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.listarId(matricula);
    }

    public Estudiante eliminar(int matricula) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.eliminar(matricula);
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Modelo.EstudianteService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class Controlador extends HttpServlet {
    
    String add ="add.jsp";
    String edit = "edit.jsp";
    String index = "index.jsp";
    String acceso = "";
    EstudianteService user = new EstudianteService();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        if(accion.equals("add")){
            acceso = add;
        }else if(accion.equals("Guardar")){
            int matricula = Integer.parseInt(request.getParameter("txt_matricula"));
            String nombre = request.getParameter("txt_nombre");
            String apellido = request.getParameter("txt_apellidos");
            int edad = Integer.parseInt(request.getParameter("txt_edad"));
            String sexo = request.getParameter("txt_sexo");
            String contrasena = request.getParameter("txt_contrasena");
            String carrera = request.getParameter("txt_carrera");
            
            user.agregar(matricula, nombre, apellido, edad, sexo, contrasena, carrera);
            acceso = index;
            
        }else if(accion.equals("editar")){
            acceso = edit;
            request.setAttribute("idEst", request.getParameter("matricula"));            
        }else if(accion.equals("eliminar")){
            int matricula = Integer.parseInt(request.getParameter("matricula"));
            user.eliminar(matricula);
            acceso = index;
        }else if(accion.equals("Actualizar")){
            int matricula = Integer.parseInt(request.getParameter("txt_matricula"));
            String nombre = request.getParameter("txt_nombre");
            String apellido = request.getParameter("txt_apellidos");
            int edad = Integer.parseInt(request.getParameter("txt_edad"));
            String sexo = request.getParameter("txt_sexo");
            String contrasena = request.getParameter("txt_contrasena");
            String carrera = request.getParameter("txt_carrera");
            
            user.editar(matricula, nombre, apellido, edad, sexo, contrasena, carrera);
            acceso = index;
            
        }else{
            acceso = index;
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(acceso);
        dispatcher.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

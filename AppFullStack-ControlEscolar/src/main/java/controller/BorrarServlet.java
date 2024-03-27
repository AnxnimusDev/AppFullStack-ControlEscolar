/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.GET;
import javax.naming.ldap.Rdn;
import model.Carrera;
import model.Modelo;

/**
 *
 * @author Mati
 */
public class BorrarServlet extends HttpServlet {
    
    private int carreraId;

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
        //Mostramos en el input text el nombre de la carrera a borrar, a partir del id que enviamos desde listar.
        carreraId = Integer.parseInt(request.getParameter("carreraId"));
        Modelo modelo = new Modelo();
        String nombreCarrera = modelo.buscarCarrera(new Carrera(carreraId)).getNombre();
        //Enviamos el nombre antiguo para mostrarlo en el formulario
        request.setAttribute("nombre_carrera", nombreCarrera);
        //Mostramos el contenido de Modificar.jsp
        RequestDispatcher rd = request.getRequestDispatcher("Borrar.jsp");
        rd.forward(request, response);
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
        //Usamos el método doPost para borrar la carrera seleccionada
        Modelo modelo = new Modelo();
        Carrera carrera = modelo.buscarCarrera(new Carrera(carreraId));
        int result = modelo.eliminarCarrera(carrera);
        //Redirijir al listado de carreras.
        response.sendRedirect("ListarServlet");
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Carrera;
import model.Modelo;

/**
 *
 * @author Mati
 */
public class ModificarServlet extends HttpServlet {
    
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
        //En process request hacemos que se muestre el nombre de la carrera seleccionada en listar.
        carreraId = Integer.parseInt(request.getParameter("carreraId"));
        Modelo modelo = new Modelo();
        String nombreCarrera = modelo.buscarCarrera(new Carrera(carreraId)).getNombre();
        //Enviamos el nombre antiguo para mostrarlo en el formulario
        request.setAttribute("nombre_antiguo", nombreCarrera);
        //Mostramos el contenido de Modificar.jsp
        RequestDispatcher rd = request.getRequestDispatcher("Modificar.jsp");
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
        //Usamos el método doPost para modificar el registro de carrera seleccionado.
        String nuevoNombre = request.getParameter("nombreNuevoInput");
        Modelo modelo = new Modelo();
        Carrera updCarrera = new Carrera(0, nuevoNombre);
        Carrera oldCarrera = modelo.buscarCarrera(new Carrera(carreraId));
        int result = modelo.modificarCarrera(oldCarrera, updCarrera);
        //Verificar el resultado

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

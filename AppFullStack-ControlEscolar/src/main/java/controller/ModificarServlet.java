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
import model.Carrera;
import model.Modelo;

/**
 *
 * @author Mati
 */
public class ModificarServlet extends HttpServlet {

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
        //Pillamos el ID envíado desde el ListarServlet, de la carrera a modificar
        int carreraId = Integer.parseInt(request.getParameter("carreraId"));
        Modelo modelo = new Modelo();
        String nombreCarrera = modelo.buscarCarrera(new Carrera(carreraId)).getNombre();
        //Enviamos el nombre antiguo para mostrarlo en el formulario
        request.setAttribute("nombre_antiguo", nombreCarrera);
        //Ahora quiero que se pille el valor del input nombre, y al darle al submit haga la operación con el modelo 
        RequestDispatcher rd = request.getRequestDispatcher("Modificar.jsp");
        rd.forward(request, response);
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
//        int carreraId = Integer.parseInt(request.getParameter("carreraId"));
//        String nuevoNombre = request.getParameter("nombre");
//        
//        Modelo modelo = new Modelo();
//        //Antigua carrera
//        Carrera oldCarrera = modelo.buscarCarrera(new Carrera(carreraId));
//        //Modificamos la carrera
//        modelo.modificarCarrera(oldCarrera, new Carrera(0, nuevoNombre));
//        //Volvemos a ListarServlet
//        response.sendRedirect("ListarServlet");
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

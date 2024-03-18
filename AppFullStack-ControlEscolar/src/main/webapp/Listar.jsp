<%-- 
    Document   : Listar
    Created on : 18 mar 2024, 12:44:21
    Author     : anxnimus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Carrera</title>
    </head>
    <body>
        <h2>Listado de Carreras</h2>
           <% 
               List<Carrera> carreras = (List<Carrera>) request.getAttribute("carreras");
               if(carreras != null && !carreras.isEmpty()) {
           %>
               <ul>
                   <% for(Carrera carrera : carreras) { %>
                       <li><%= carrera.getNombre() %></li> <!-- Asume que Carrera tiene métodos getNombre y getDescripcion -->
                   <% } %>
               </ul>
           <% 
               } else { 
           %>
               <p>No hay carreras disponibles para mostrar.</p>
           <% 
               } 
           %>
    </body>
</html>

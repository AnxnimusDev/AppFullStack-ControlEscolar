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
        <link rel="stylesheet" href="./css/styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik+Scribble&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="home-title">
            <h2>Listado de Carreras</h2>
        </div>
        
        <div class="container">
            <table class="table">
                <tr>
                    <th colspan="2">Nombre Carrera</th>
                    <th colspan="2">Opciones</th>
                        <%
                            List<Carrera> carreras = (List<Carrera>)request.getAttribute("carreras");
                            for(Carrera carrera: carreras){
                        %>
                <tr>
                    <td colspan="2"><%= carrera.getNombre()%></td>
                    <td>
                        <form action="ModificarServlet" method="get">
                            <input type="hidden" name="carreraId" value="<%= carrera.getId() %>">
                            <input type="submit" value="Modificar">
                        </form>
                    </td>
                    <td>
                        <form action="BorrarServlet" method="get">
                            <input type="hidden" name="carreraId" value="<%= carrera.getId() %>">
                            <input type="submit" value="Borrar">
                        </form>
                    </td>
                </tr>
                <%   
                    }
                %>
                </tr>
            </table>
            <input type="button" onclick="window.location.href = 'HomeServlet';" value="Cancelar"/>
        </div>
    </body>
</html>

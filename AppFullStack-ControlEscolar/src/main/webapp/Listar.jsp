<%-- 
    Document   : Listar
    Created on : 18 mar 2024, 12:44:21
    Author     : anxnimus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="model.persist.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Carrera</title>
    </head>
    <body>
        <h1>Lista Carreras</h1>
        <table>
            <tr>
                <td>Nombre Carrera</td>
                <td>Borrar</td>
                <td>Modificar</td>
            </tr>
            <%
                for(Carrera carrera: ${carreras}){
            %>
                    <tr>
                        <td><%= carrera.getNombre() %></td>
                        <td><button onclick="">Borrar</button></td>
                        <td><button onlcick="">Modificar</button></td>
                    </tr>
                    <%
                }
            %>
        </table>
    </body>
</html>

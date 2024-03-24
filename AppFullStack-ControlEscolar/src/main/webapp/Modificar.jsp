<%-- 
    Document   : Modificar
    Created on : 18 mar 2024, 12:44:28
    Author     : anxnimus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Carrera</title>
    </head>
    <body>
        <h2>Modificando Carrera</h2>
        <form action="ModificarServlet" method="post">
            <label for="nombreAntiguo">Nombre Antiguo:</label><br>
            <input type="text" name="nombreAntiguo" value="${nombre_antiguo}" readonly/><br>
            
            <label for="nombreNuevo">Nombre Nuevo:</label><br>
            <input type="text" name="nombreNuevoInput" required/><br>
            
            <input type="submit" value="Modificar"/>
            <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
            <input type="button" onclick="window.location.href = 'ListarServlet';" value="Cancelar"/>
        </form>
    </body>
</html>

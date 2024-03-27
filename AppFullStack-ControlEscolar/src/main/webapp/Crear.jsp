<%-- 
    Document   : Crear
    Created on : 18 mar 2024, 12:44:03
    Author     : anxnimus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Carrera</title>
    </head>
    <body>
        <h2>Creando Carrera</h2>
        <form action="CrearServlet" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required/>
            <br>
            <input type="submit" value="Crear"/>
            <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
            <input type="button" onclick="window.location.href = 'HomeServlet';" value="Cancelar"/>
            <!-- <button onclick="window.location.href='ListarServlet'" type="submit">Crear</button> -->
        </form>
    </body>
</html>

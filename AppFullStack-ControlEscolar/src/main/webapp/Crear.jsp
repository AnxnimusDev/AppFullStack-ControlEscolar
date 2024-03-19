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
        <form action="CrearServlet" method="POST">
            <h2>Creando Carrera</h2>
            <label for="nombre">Nombre: </label>
            <input type="text" id="nombre" name="nombre" required/>
            <button type="submit">Crear</button>
        </form>
    </body>
</html>

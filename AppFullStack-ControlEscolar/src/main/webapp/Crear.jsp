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
        <link rel="stylesheet" href="./css/styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik+Scribble&display=swap" rel="stylesheet">
    </head>
    <body>
        <h2>Creando Carrera</h2>
        <div class="container">
            <form action="CrearServlet" method="post">
                <label for="nombre">Nombre:</label>
                <input placeholder="Nombre de la carrera"type="text" id="nombre" name="nombre" required/>
                <br>
                <input type="submit" value="Crear"/>
                <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
                <input type="button" onclick="window.location.href = 'HomeServlet';" value="Cancelar"/>
                <!-- <button onclick="window.location.href='ListarServlet'" type="submit">Crear</button> -->
            </form>
        </div>

    </body>
</html>

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
        <link rel="stylesheet" href="./css/styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik+Scribble&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="home-title">
            <h2>Modificando Carrera</h2>    
        </div>
        <div class="table" style="display: flex;
             flex-direction: column;
             justify-content: center;
             align-items: center;">
            <form action="ModificarServlet" method="post">
                <label for="nombreAntiguo">Nombre Antiguo:</label><br>
                <input type="text" name="nombreAntiguo" value="${nombre_antiguo}" readonly/><br>

                <label for="nombreNuevo">Nombre Nuevo:</label><br>
                <input placeholder="Nuevo Nombre"type="text" name="nombreNuevoInput" required/><br>

                <input type="submit" value="Modificar"/>
                <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
                <input type="button" onclick="window.location.href = 'ListarServlet';" value="Cancelar"/>
            </form>
        </div>
    </body>
</html>

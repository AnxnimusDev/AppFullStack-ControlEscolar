<%-- 
    Document   : Borrar
    Created on : 18 mar 2024, 12:51:32
    Author     : anxnimus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar</title>
        <link rel="stylesheet" href="./css/styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik+Scribble&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="home-title">
            <h2 >Confirmar Borrar</h2>
        </div>

        <div class="table" style="display: flex;
             flex-direction: column;
             justify-content: center;
             align-items: center;">
            <h2>¿Estás seguro?</h2>
            <form action="BorrarServlet" method="post">
                <label>Se eliminará de la base de datos la siguiente carrera:</label>
                <br>
                <input placeholder="Nombre de la carrera"type="text" name="nombreCarrera" value="${nombre_carrera}" readonly/>
                <br>
                <input type="submit" value="Borrar"/>
                <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
                <input type="button" onclick="window.location.href = 'ListarServlet';" value="Cancelar"/>
            </form>
        </div>
    </body>
</html>

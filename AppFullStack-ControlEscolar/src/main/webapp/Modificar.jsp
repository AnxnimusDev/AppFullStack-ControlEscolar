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
        <form action="confirmarModificar" method="post">
            <label for="nombreAntiguo">Nombre Antiguo:</label>
            <br>
            <input type="text" name="nombreAntiguo" value="${nombreAntiguo}" readonly/>
            <br>
            <label for="nombreNuevo">Nombre Nuevo:</label>
            <br>
            <input type="text" name="nombreNuevo" required/>
            <br>
            <input type="submit" value="Modificar"/>
        </form>
        <!-- 
        <label for="nombre_antiguo">Nombre Antiguo: </label>
        <input type="text" id="nombre_antiguo" name="nombre_antiguo" value="${nombre_antiguo}"readonly/>
        <br>
        <label for="nombre">Nombre Nuevo: </label>
        <input type="text" id="nombre" name="nombre" required/>
        <button type="submit">Modificar</button>
         -->
    </body>
</html>

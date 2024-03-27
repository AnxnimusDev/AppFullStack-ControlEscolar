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
    </head>
    <body>
        <h1>Confirmar Borrar</h1>
        <h2>¿Estás seguro?</h2>
        <form action="BorrarServlet" method="post">
            <label>Se eliminará de la base de datos la siguiente carrera:</label>
            <br>
            <input type="text" name="nombreCarrera" value="${nombre_carrera}" readonly/>
            <br>
            <input type="submit" value="Borrar"/>
            <!<!-- Añado este input para poder cancelar la operación y volver al listado de carreras -->
            <input type="button" onclick="window.location.href = 'ListarServlet';" value="Cancelar"/>
        </form>
<!--        <table>
            <tr>
                <td><button onclick="confirmarBorrado()">Sí</button></td>
                <td><button onclick="window.location.href='ListarServlet';">No</button></td>
            </tr>
        </table>-->
    </body>
</html>

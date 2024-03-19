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
        <table>
            <tr>
                <td><button onclick="confirmarBorrado()">Sí</button></td>
                <td><button onclick="window.location.href='ListarServlet';">No</button></td>
            </tr>
        </table>

    </body>
</html>

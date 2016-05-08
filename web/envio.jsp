<%-- 
    Document   : envio
    Created on : 18-feb-2015, 15:40:10
    Author     : Profesor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta contacto</title>
    </head>
    <body>
        <h1>Alta de contactos</h1>
        <%if(request.getParameter("oculto")!=null){%>
        <jsp:useBean id="contacto" class="beans.Contacto" scope="request"/>
        <jsp:setProperty name="contacto" property="*"/>
        <jsp:forward page="/grabar"/>
        <%}%>
    <center>
        <form action="envio.jsp" method="post">
            <input type="hidden" name="oculto" value="algo"/>
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre"/><br/>
            <label for="direccion">Dirección:</label>
            <input type="text" name="direccion"/><br/>
            <label for="telefono">Teléfono:</label>
            <input type="text" name="telefono"/><br/>
            <input type="submit" value="Grabar"/>
        </form>
    </center>
    </body>
</html>

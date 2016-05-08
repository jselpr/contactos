<%-- 
    Document   : listado
    Created on : 18-feb-2015, 16:19:40
    Author     : Profesor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de contactos</title>
    </head>
    <body>
        <h1>Listado de contactos</h1>
        
        <% ArrayList<Contacto> contactos = (ArrayList<Contacto>)application
                .getAttribute("listacontactos"); %>
        
        <table border="1">
            <tr><th>Nombre</th><th>Dirección</th><th>Teléfono</th></tr>
           
            
          
            <%for(Contacto c:contactos){%>
            <tr>
                <td><%=c.getNombre()%></td>
                <td><%=c.getDireccion()%></td>
                <td><%=c.getTelefono()%></td>
            </tr>
        <%}%>
   
  
        </table>
    </body>
</html>

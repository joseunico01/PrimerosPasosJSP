<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>

<%
//Obteniendo los valores del formulario
String ciudad_favorita=request.getParameter("ciudad_favorita");

//Creak cokkie ->>cookie("pagina_ubicacion.name",nueva_varibale)
Cookie laCookie=new Cookie("Formulario_cokkies_00.ciudad_favorita",ciudad_favorita);

//Vida de la cookie
laCookie.setMaxAge(365*24*60*60);//Un año segun el calulo del parametro,se cuenta desde segundos

//Enviar al usuario
response.addCookie(laCookie);
%>
Gracias por enviar tus preferencias
<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>
        </body>
</html>

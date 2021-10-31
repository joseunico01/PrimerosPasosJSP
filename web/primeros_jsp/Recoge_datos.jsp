<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>
<!-- Aca recogemos la informacion del REGISTRO.HMTL y lo guardamos en la base de datos PROYECTO_JSP-->

<%
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");
String pais=request.getParameter("pais");
String tecnologia=request.getParameter("tecnologias");

//De manera exrtenza, nivel LOL
Class.forName("com.mysql.cj.jdbc.Driver");
try {
Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","vasquez");
Statement miStatement=miConexion.createStatement();
String instruccionsql="insert into usuarios(Nombre, Apellido, Usuario, Contraseña, Pais, Tecnologia) values('"+nombre+"','"+apellido+"','"+usuario+"','"+contra+"','"+pais+"','"+tecnologia+"')";
miStatement.executeUpdate(instruccionsql);
out.print("registrado con exito");

        } catch (Exception e) {
                out.print("Ha habido un eroro"+e);
        }
%>



                
        </body>
</html>

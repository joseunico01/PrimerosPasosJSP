<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>


<%
String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");
//De manera exrtenza, nivel LOL
Class.forName("com.mysql.cj.jdbc.Driver");
try {
        Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","vasquez");
        //Crearemos consultas preparadas para q no puedan acceder a mi base de datos
        PreparedStatement c_preparada=miConexion.prepareStatement("select *from usuarios where Usuario=? and Contraseña=?",ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        c_preparada.setString(1, usuario);
        c_preparada.setString(2, contra);

        ResultSet miResulset=c_preparada.executeQuery();
                if(miResulset.absolute(1)){ out.print("Usuario Autorizado");}
                //if(miResulset.next()){ out.print("Usuario Autorizado");} //2da opcion
                else {out.print("No hay Usuarios con estos datos");}

        } catch (Exception e) {
                out.print("Ha habido un eroro"+e);
        }
%>
        </body>
</html>

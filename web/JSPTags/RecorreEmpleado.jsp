<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*, java.sql.*, clasejstp.com.Empleado" %>
<!--
TEORIA DEL JSPTAG
-->

<%
ArrayList<Empleado> datos=new ArrayList<>();

Class.forName("com.mysql.cj.jdbc.Driver");
try{
        Connection miConn=DriverManager.getConnection("jdbc:mysql://localhost/proyecto_jsp","root","vasquez");
        Statement miStatement=miConn.createStatement();
        String instruccionSql="select *from empleados";
        ResultSet rs=miStatement.executeQuery(instruccionSql);
        while(rs.next()){
                datos.add(new Empleado(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4)));
        }
        rs.close();
        
}catch(Exception e){
        out.print("Ha habido un error");
}
pageContext.setAttribute("losEmpleados", datos);

%>

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
                <style>
                        .cabecera{
                            font-weight: bold;
                        }

                </style>
                
        </head>
<body>

        <h1>JSPTags</h1><hr><br>
        <h2>HACIENDO USANDO FOR CON JSPTags</h2>
        <table border="1">
                <tr class="cabecera"><td>Nombre </td><td>Apellido</td><td>Puesto</td><td>Salario</td><td>Bonus</td></tr>
        <c:forEach var="EmpTemp" items="${losEmpleados}">
                <tr><th>${EmpTemp.nombre}</th>  <th>${EmpTemp.apellido}</th>  <th>${EmpTemp.puesto}</th>  <th>${EmpTemp.salario}</th>
                        <th>
                                <c:if test="${EmpTemp.salario<40000}">5000</c:if>
                                <c:if test="${EmpTemp.salario>=40000}">No tienes bono llora nomas xd</c:if>
                        </th>
        </c:forEach>
                </tr>
        </table> <br><br>


        <h2>HACIENDO USANDO FOR-IF CON JSPTags</h2>
        <table border="1">
                <tr class="cabecera"><td>Nombre </td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>
        <c:forEach var="EmpTemp" items="${losEmpleados}">
                <tr><th>${EmpTemp.nombre}</th>  <th>${EmpTemp.apellido}</th>  <th>${EmpTemp.puesto}</th>  <th>
                <c:if test="${EmpTemp.salario<40000}">
                                ${EmpTemp.salario+5000}
                </c:if>
                <c:if test="${EmpTemp.salario>=40000}">
                                ${EmpTemp.salario}
                </c:if>
                        </th>
        </c:forEach>
                </tr>
        </table> <br><br>
        
        <h2>HACIENDO CON FOR-SWICTH EN JSPTags</h2>
        <table border="1">
                <tr class="cabecera"><td>Nombre </td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>
        <c:forEach var="EmpTemp" items="${losEmpleados}">
                <tr><th>${EmpTemp.nombre}</th>  <th>${EmpTemp.apellido}</th>  <th>${EmpTemp.puesto}</th>  <th>
                                <c:choose>
                                        <c:when test="${EmpTemp.salario<40000}">
                                            ${EmpTemp.salario+5000}    
                                        </c:when>

                                        <c:otherwise>
                                              ${EmpTemp.salario}  
                                        </c:otherwise>
                                </c:choose>
                        </th>
        </c:forEach>
                </tr>
        </table> <br><br>

        <h2>Que tenga salario mayor q 4000 y menor o igual q 5000</h2>
        <table border="1">
                <tr class="cabecera"><td>Nombre </td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>
        <c:forEach var="EmpTemp" items="${losEmpleados}">
                <tr><th>${EmpTemp.nombre}</th>  <th>${EmpTemp.apellido}</th>  <th>${EmpTemp.puesto}</th>  <th>
                                <c:choose>
                                        <c:when test="${EmpTemp.salario<40000}">
                                            ${EmpTemp.salario+5000}    
                                        </c:when>
                                        <c:when test="${EmpTemp.salario>40000 && EmpTemp.salario<=50000}">
                                            ${EmpTemp.salario+2000}    
                                        </c:when>
                                        
                                        <c:otherwise>
                                              ${EmpTemp.salario}  
                                        </c:otherwise>
                                </c:choose>
                        </th>
        </c:forEach>
                </tr>
        </table> 
        
</body>
</html>
<!--
FOR SEGUNC:FOREACH
c:forEach var="nueva_variable" items="${nombre_array}">
        ${nueva_variable.dato_nombre_array} ${nueva_variable.dato_nombre_array} <br> 
/c:forEach>

IF SEGUN C:IF
C:IF TEXT="CONDICION">RESULTADO</C:IF>
C:IF TEXT="CONDICION_contraria">RESULTADO</C:IF>//para q funcione como un else
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String alumnos[]={"antonuio","Sandra","Maria","Paco"};

//Guardamos en el nuevo atributo la info de alumnos
pageContext.setAttribute("losAlumnos", alumnos);

%>

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>

        <c:forEach var="tempAlumnos" items="${losAlumnos}">
                ${tempAlumnos}</br>
        </c:forEach>
                

</body>
</html>

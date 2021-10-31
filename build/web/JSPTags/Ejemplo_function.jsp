<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>

<c:set var="datos" value="Ana,Lopez,Directora,7500"/>
<c:set var="datosArray" value="${fn:split(datos,',')}"/>

        <input type="text" value="${datosArray[0]}"><br>
        <input type="text" value="${datosArray[1]}"><br>
        <input type="text" value="${datosArray[2]}"><br>
        <input type="text" value="${datosArray[3]}"><br>

        </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>

        <h2>Usuario Registrados</h2>
Usuario confirmado:<br><br>
Nombre:<%=request.getParameter("nombre")%> &nbsp;
Apellido:<%=request.getParameter("apellido")%>
<br><br>
<jsp:include page="Fecha.jsp"></jsp:include>


</body>      
</html>

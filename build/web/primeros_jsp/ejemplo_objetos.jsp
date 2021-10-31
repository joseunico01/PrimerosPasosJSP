<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>
        <h1>Objetos predefinidos</h1>
        Peticion datos del navegaror: <%=request.getHeader("User-Agent")%>
        <br><br>
       Peticion del idioma utlilizado:<%=request.getLocale()%>
       
        
</body>
</html>

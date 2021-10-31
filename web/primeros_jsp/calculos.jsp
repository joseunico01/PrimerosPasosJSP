<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="calculos.com.*" %>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>
                <h1>LLAMANDO METODOS DE LA CLASE JAVA CACULOS.JSP</h1>
                <h2>llamando sin imoprtar la clase, de fomrma manual</h2>
La suma de 5 y 7 es:<%=calculos.com.Calculos.metodoSuma(5,7)%><br>
La resta de 5 y 7 es:<%=calculos.com.Calculos.metodoResta(5,7)%><br>
La multiplicacion de 5 y 7 es:<%=calculos.com.Calculos.metodoMultiplica(5,7)%><br>
<br>



<h2>Llamando cuando importamos el paquete, asi podemos abreiar codigo al escribir</h2>


La suma de 5 y 7 es:<%=Calculos.metodoSuma(5,7)%><br>
La resta de 5 y 7 es:<%=Calculos.metodoResta(5,7)%><br>
La multiplicacion de 5 y 7 es:<%=Calculos.metodoMultiplica(5,7)%><br>
                
        </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>
        <h1>Ejemplo de expresiones</h1>
Hola nov <%= new java.util.Date()%>
        <br><br>
Convirtiendo a mayuscula: <%= new String("juan").toUpperCase()%>
        <br><br>
La suma de 5 y 7 es: <%= 5+7%>
        <br><br>
        Expresion Boolean:<br>
10 es mayor que 100 <%= 10>100%>

        <h1>Ejemplo de scriptlet</h1>
<%
for(int i=0;i<=10;i++){
        out.print("Este es el mensaje"+i+"<br>");
}
%>
        <br><br>
        <h1>Ejemplo de Declaraciones</h1>
<%!
private int resultado;
public int metodoSuma(int n1,int n2){
resultado=n1+n2;
return resultado;
}

public int metodoResta(int n1,int n2){
resultado=n1-n2;
return resultado;
}

public int metodoMultiplica(int n1,int n2){
resultado=n1*n2;
return resultado;
}
%>

El resultado de la suma es:<%= metodoSuma(7,5)%><br>
El resultado de la resta es:<%= metodoResta(7,5)%><br>
El resultado de la multiplicacion es:<%= metodoMultiplica(7,5)%><br>



        
</body>
</html>

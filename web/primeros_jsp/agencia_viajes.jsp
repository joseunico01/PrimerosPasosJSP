<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>
        <h1 style="text-align: center">Agencia de viajes</h1>
<%
//Valor por defecto
String ciudad_favorita="Madrid";

//Lee las cookies
Cookie[] lasCookies=request.getCookies();

//Buscar las preferencias.de la ciudad_favorita
if(lasCookies!=null){
        for(Cookie cookie_temporal: lasCookies){
                if("Formulario_cokkies_00.ciudad_favorita".equals(cookie_temporal.getName())){
                        ciudad_favorita=cookie_temporal.getValue();
                        break;
                }
        }
}
%>

<br><br>
<h3>Vuelos a <%= ciudad_favorita%></h3>
<h4>Aca deberia de ir una info de base de datos segun la refencia obtenida</h4>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

<br><br>
<h3>Hoteles en <%= ciudad_favorita%></h3>
<h4>Aca deberia de ir una info de base de datos segun la refencia obtenida</h4>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

<br><br>
<h3>Descuentos en restaurantes de <%= ciudad_favorita%></h3>
<h4>Aca deberia de ir una info de base de datos segun la refencia obtenida</h4>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>



        
</body>
</html>

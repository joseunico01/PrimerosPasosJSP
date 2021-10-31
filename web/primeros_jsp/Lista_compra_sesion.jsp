<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
<body>
<form action="Lista_compra_sesion.jsp" method="post">
        <table>
                <tr>
                        <th><label>Articulos a Comprar</label></th>
                </tr>
                <tr>
                        <th><label>Agua</label></th>
                        <th><input type="checkbox" name="articulos" value="Agua"></th>
                </tr>
                <tr>
                        <th><label>Leche</label></th>
                        <th><input type="checkbox" name="articulos" value="Leche"></th>
                </tr>
                <tr>
                        <th><label>Pan</label></th>
                        <th><input type="checkbox" name="articulos" value="Pan"></th>
                </tr>
                <tr>
                        <th><label>Manzana</label></th>
                        <th><input type="checkbox" name="articulos" value="Manzana"></th>
                </tr>
                <tr>
                        <th><label>Carne</label></th>
                        <th><input type="checkbox" name="articulos" value="Carne"></th>
                </tr>
                <tr>
                        <th><label>Pescado</label></th>
                        <th><input type="checkbox" name="articulos" value="Pescado"></th>
                </tr>
                <tr>
                        <th><input type="submit" value="enviar"></th>
                </tr>
        </table>
</form>
        <h2>Carro de la compra</h2>

<ul>
<%

List<String> ListaElementos=(List<String>)session.getAttribute("misElementos");

if(ListaElementos==null){
        ListaElementos=new ArrayList<String>();
        session.setAttribute("misElementos", ListaElementos);
}

String[] elementos=request.getParameterValues("articulos");
if(elementos!=null){
        for(String elemTemp: elementos){
                ListaElementos.add(elemTemp);
        }
}

for(String elemTemp : ListaElementos){
        out.print("<li>"+elemTemp+"</li>");
}
%>
</ul>
</body>
</html>

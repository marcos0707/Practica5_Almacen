<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1><p style="color:red">PRODUCTOS DEL ALMACEN</p></h1>
        <h2><a href="Inicio?action=add"><p style="color:blueviolet"><li>Nuevo producto</li></p></a></h2>
        <table border ="1.5">
            <tr>
                <th><p style="color:green">Id</p></th>
                <th><p style="color:green">Descripcion</p></th>
                <th><p style="color:green">Stock</p></th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td><li>${item.id}</li></td>
                    <td>${item.descripcion}</td>
                    <td>${item.stock}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('ESTA SEGURO!!??'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </center>
    </body>
</html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Modelos.usuario"%>
<%
    usuario usuario = (usuario) request.getAttribute("usuario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo usuario</h1>
        
            <form action="UsuarioController" method="post"  class="row g-3 needs-validation" novalidate>
                
                <input type="hidden" name="id" value="${usuario.id}" />
            <table>
                <tr>
                <div class="col-md-4 position-relative">
                    <td><label for="validationTooltip01" class="form-label">Nombre</label></td>
                    <td><input type="text" class="form-control" id="validationTooltip01" name="nombre" value="${usuario.nombre}" required></td>
                    <div class="valid-tooltip"></div>
                </div>
          </tr>
          <tr>
                  <div class="mb-3">
                    <td><label for="exampleInputEmail1" class="form-label">Correo</label></td>
    <td><input type="email" name="correo" value ="${usuario.correo}"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"></td>
    <div id="emailHelp" class="form-text">tu correo electronico sera protegido y no se mostrara.</div>
      </div>
          </tr>
                <tr>
                    <td>Clave</td>
                    <td><input type="password" name ="clave" value="${usuario.clave}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>

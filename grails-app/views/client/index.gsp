<%--
  Created by IntelliJ IDEA.
  User: mfariasfalki
  Date: 2019-04-26
  Time: 09:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Principal</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <h2>Completar formulario</h2>
    <g:form action="showFavorite" class="form-group" style="margin-top: 20px">
        <g:submitButton name="Agencias favoritas" class="btn btn-info"/>
    </g:form>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="enviarDatos" style="margin: 20px auto; width:320px">
        <div class="form-group">
            <label>Sitio:</label>
            <g:textField class="form-control" name="site" value="MLA" required="" type=""/>
        </div>
        <div class="form-group">
            <label>Metodos de pagos:</label>
            <g:textField class="form-control" name="payment_methods" value="rapipago" required="" />
        </div>
        <div class="form-group">
            <label>Orden:</label>
            <g:select class="form-control" name="order" from="${["address_line","agency_code","distance"]}" value="${order}"/>
        </div>
        <div class="form-group">
            <label>Latitud:</label>
            <g:textField class="form-control" name="latitud" value="-31.412971" required=""/>
        </div>
        <div class="form-group">
            <label>Longitud:</label>
            <g:textField class="form-control" name="longitud" value="-64.18758" required="" />
        </div>
        <div class="form-group">
            <label>Límite:</label>
            <g:textField class="form-control" name="limit" value="3"/>
        </div>
        <div class="form-group">
            <label>Offset:</label>
            <g:textField class="form-control" name="offset" value="1"/>
        </div>
            <g:submitButton name="Enviar" class="btn btn-primary" />

    </g:form>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
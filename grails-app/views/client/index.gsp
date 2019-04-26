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
</head>

<body>
    <h2>Completar formulario</h2>
    <g:form action="enviarDatos" style="margin: 0 auto; width:320px">
        <label>Sitio:</label>
        <g:textField name="site" value="MLA" required="" type=""/><br/>
        <label>Metodos de pagos:</label>
        <g:textField name="payment_methods" value="rapipago" required="" /><br/>
        <label>Ordenes:</label>
        <g:select name="order" from="${["address_line","agency_code","distance"]}" value="${order}"/><br/>
        <label>Latitud:</label>
        <g:textField name="latitud" value="-31.412971" required=""/><br/>
        <label>Longitud:</label>
        <g:textField name="longitud" value="-64.18758" required="" /><br/>
        <label>Límite:</label>
        <g:textField name="limit" value="3"/><br/>
        <label>Offset:</label>
        <g:textField name="offset" value="1"/><br/>
        <g:submitButton name="Enviar" /><br/>
    </g:form>
</body>
</html>
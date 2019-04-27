<%--
  Created by IntelliJ IDEA.
  User: mfariasfalki
  Date: 2019-04-26
  Time: 10:19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Agencias</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body style="margin: 30px">

    <h2>Agencias cercanas</h2>

    <g:form action="showFavorite" class="form-group" style="margin-top: 20px; float: left">
        <g:submitButton name="Agencias favoritas" class="btn btn-info"/>
    </g:form>
    <g:form action="index">
        <g:submitButton name="volver" class="btn btn-info" style="margin-top: 20px; margin-left: 20px"/>
    </g:form>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Descripción</th>
            <th scope="col">Dirección</th>
            <th scope="col">Código de agencia</th>
            <th scope="col">Distancia (mts)</th>
            <th scope="col">Like</th>
            <th scope="col">Unlike</th>
        </tr>
        </thead>
        <tbody>
            <g:each in= "${result}" var="it">
                <tr>
                    <th scope="row">${it.description}</th>
                    <td>
                        ${it.address.address_line}
                        ${it.address.city}
                        ${it.address.country}
                        ${it.address.state}
                    </td>
                    <td>${it.agency_code}</td>
                    <td><g:formatNumber number="${it.distance}"/></td>
                    <td>
                        <g:form action="saveAgency" id="${it.id}">
                            <g:submitButton name="like" class="btn btn-primary"/>
                        </g:form>
                    </td>
                    <td>
                        <g:form action="deleteAgency" id="${it.id}">
                            <g:submitButton name="unlike" class="btn btn-primary"/>
                        </g:form>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
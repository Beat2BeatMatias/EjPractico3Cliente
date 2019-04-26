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

<body>


    <table class="table table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">Descripción</th>
            <th scope="col">Direccion</th>
            <th scope="col">Codigo de agencia</th>
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
                            <g:submitButton name="like" class="btn btn-light"/>
                        </g:form>
                    </td>
                    <td>
                        <g:form action="saveAgency">
                            <g:submitButton name="unlike" class="btn btn-light"/>
                        </g:form>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
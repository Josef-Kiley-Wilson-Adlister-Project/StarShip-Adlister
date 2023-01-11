<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Starship Adlister"/>
    </jsp:include>
    <style>
        body {
            background-color: #000000;
            color: #a18a03;
            background-image: url("https://pbs.twimg.com/media/EEdsE45X4AE8S0C?format=jpg&name=medium");
            background-size: cover;
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Welcome to the StarShip Adlister!</h1>
</div>
</body>
</html>

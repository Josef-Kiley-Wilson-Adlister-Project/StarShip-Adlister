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
            color: #bdbd02;
            background-image: url("https://pbs.twimg.com/media/EEdsE45X4AE8S0C?format=jpg&name=medium");
            background-size: cover;
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            text-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1 class="d-flex justify-content-center">Welcome To Ship Lister</h1>
    <div>
        <h1>Our Mission:</h1>
        <h2>Provide a discrete method of buying and selling all your "legally" acquired starships in one convenient platform. All while maintaining a level of anonymity at a price point you will find nowhere else in the galaxy. Our fees range from 18% on minor transactions, to 35% on more illicit goods.</h2>

    </div>
</div>

</body>
</html>

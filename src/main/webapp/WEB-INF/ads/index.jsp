<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        body{
            background-color: #000000;
            color: yellow;
            background-image: url("https://lumiere-a.akamaihd.net/v1/images/databank_superstardestroyer_01_169_d5757b90.jpeg?region=0%2C49%2C1560%2C780");
            background-size: cover;
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            text-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
        }
        .container{
            border: 2px solid greenyellow;
            margin: 50px;

        }
        h1 {
            /*background-image: url("https://media.giphy.com/media/VxbvpfaTTo3le/giphy.gif");*/
            border: 2px solid powderblue;
            margin: 50px;
            background-size: cover;
            text-align: center;

        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Starships for sale</h1>
    <div>
        <form method="POST" action="/search">
            <div class="form-group d-flex">
                <input id="title" name="searchbox" class="form-control mr-1 bg-transparent text-white" type="text">
                <input type="submit" class="btn btn-warning" value="Search">
            </div>
        </form>
    </div>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.price}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>

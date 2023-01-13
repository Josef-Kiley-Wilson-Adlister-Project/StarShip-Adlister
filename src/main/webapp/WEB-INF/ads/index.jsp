<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <style>
        body {
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

        .container {
            border: 2px solid greenyellow;
            box-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
            margin: 50px;

        }

        h1 {
            margin: 50px;
            background-size: cover;
            text-align: center;
        }
        .table {
            color: yellow;
            border: 2px solid greenyellow;
            box-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container-fluid">
    <h1>Starships for sale</h1>
    <div>
        <form method="POST" action="/search">
            <div class="form-group d-flex">
                <input id="title" name="searchbox" class="form-control mr-1 bg-transparent text-white" type="text">
                <input type="submit" class="btn btn-warning" value="Search">
            </div>
        </form>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th>Product Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ads}" var="ad">
            <tr>
                <td>${ad.title}</td>
                <td>${ad.description}</td>
                <td>${ad.price}</td>

                <td>
                    <form action="/delete" method="post">
                        <input type="hidden" name="id" value="${ad.id}">
                        <input class="btn btn-danger btn-sm" type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

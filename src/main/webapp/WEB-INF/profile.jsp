<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        body{
            background-color: #000000;
            color: yellow;
            background-image: url("https://www.denofgeek.com/wp-content/uploads/2020/05/Star-Destroyer.jpg?w=1024");
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome Home, ${sessionScope.user.username}!</h1>
    </div>
    <div class="container">
        <h1 class="d-flex justify-content-center">Your Starships for sale</h1>

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

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
            background-size: cover;
            height: 100%;
            width: 100%;
            background-attachment: fixed;
            text-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
        }
        .containerOne{
            border: 2px solid greenyellow;
            mso-border-shadow: yes;
            text-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
            padding: 20px 30px;
        }
     
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container text-center">
        <h1>Welcome Customer, ${sessionScope.user.username}! How can we be of assistance?</h1>
    </div>
    <br>
        <div>
            <h3 class="userName">User Name:&nbsp; ${sessionScope.user.username}</h3>
            <br>
            <h3 class="email">Email:&nbsp; ${sessionScope.user.email}</h3>
        </div>
    <form action="profile" method="post">

    </form>
    <br>

    <div class="containerOne">
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

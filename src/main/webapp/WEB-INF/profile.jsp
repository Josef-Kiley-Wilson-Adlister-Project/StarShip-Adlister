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
            box-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
            text-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
            padding: 20px 30px;
        }
        .table {
            color: yellow;
            border: 2px solid greenyellow;
            box-shadow: 1px 1px 2px cornflowerblue, 0 0 25px cornflowerblue, 0 0 5px yellowgreen;
        }
     
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container-fluid text-center">
        <h1>Welcome Customer, ${sessionScope.user.username}! How can we be of assistance?</h1>
    </div>
    <br>
        <div>
            <h3 class="userName">&nbsp; User Name: &nbsp; ${sessionScope.user.username}</h3>
            <br>
            <h3 class="email"> &nbsp; Email: &nbsp; ${sessionScope.user.email}</h3>
        </div>
<%--    Just trying to get an update form done --%>
    <form action="profile" method="post">

    </form>
    <br>

    <div class="containerOne">
        <h1 class="d-flex justify-content-center">Your Starships for sale</h1>
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

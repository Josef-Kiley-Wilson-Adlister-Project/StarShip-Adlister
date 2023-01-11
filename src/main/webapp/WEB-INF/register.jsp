<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <style>
        body{
            background-color: #000000;
            color: yellow;
            background-image: url("https://images.squarespace-cdn.com/content/v1/51b3dc8ee4b051b96ceb10de/fdb2bc37-1936-4561-8c5b-5f630ac7b104/this-scientifically-accurate-demonstration-of-the-death-stars-laser-weapon-in-star-wars.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-warning btn-block">
        </form>
    </div>
</body>
</html>

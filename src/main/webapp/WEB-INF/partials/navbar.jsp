<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!DOCTYPE html>
<nav class="navbar navbar-default bg-transparent ">
    <div class="container-fluid ">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand text-warning" href="/ads">Star Ship Ad lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right d-flex flex-row" >
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <li><a class="text-warning m-1" href="/login">Login</a></li>
                    <li><a class="text-warning m-1" href="/register">Register</a></li>
                </c:when>
                <c:otherwise>
                    <li><a class="text-warning m-1" href="/profile">Profile</a></li>
                    <li><a class="text-warning m-1" href="/logout">Logout</a></li>
                    <li><a class="text-warning m-1" href="/ads/create">Create ad</a></li>
                </c:otherwise>
            </c:choose>
        </ul>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
</html>

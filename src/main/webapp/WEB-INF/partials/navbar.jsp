
<html>
<!DOCTYPE html>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Star Ship Ad lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li id="register-link"  style="display: block"><a href="/register">Register</a></li>
            <li id="login-link"  style="display: block"><a href="/login">Login</a></li>
            <li  id="logout-link" style="display:block"><a href="/logout">Logout</a></li>
        </ul>

    </div><!-- /.navbar-collapse -->

    <script>
        let isLoggedIn = true;

        function handleLogin() {
            isLoggedIn = true;
            updateNavbar();
        }

        function handleLogout() {
            isLoggedIn = false;
            updateNavbar();
        }

        function updateNavbar() {
            let loginLink = document.getElementById('login-link');
            let logoutLink = document.getElementById('logout-link');
            console.log(isLoggedIn)
            if (isLoggedIn) {
                loginLink.style.display = 'none';
                logoutLink.style.display = 'block';
            } else {
                loginLink.style.display = 'block';
                logoutLink.style.display = 'none';
            }
            console.log('updateNavbar called')
            console.log(loginLink, logoutLink)
        }
        window.addEventListener("load", updateNavbar);
    </script>
</nav>
</html>

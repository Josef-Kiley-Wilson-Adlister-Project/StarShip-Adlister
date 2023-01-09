<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Star Ship Ad lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <a href="/login" style="display: ${isLoggedIn ? 'none' : 'block'}">Login</a>
            <a href="/logout" style="display: ${isLoggedIn ? 'block' : 'none'}">Logout</a>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<script>
    let isLoggedIn = false;

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
        if (isLoggedIn) {
            loginLink.style.display = 'none';
            logoutLink.style.display = 'block';
        } else {
            loginLink.style.display = 'block';
            logoutLink.style.display = 'none';
        }
    }
</script>

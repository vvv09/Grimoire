<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="/">
            <strong class="blue-text">Grimoire</strong>
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <!-- Left -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <#if history == "main">active</#if>">
                    <a class="nav-link waves-effect" href="/main">Главная</a>
                </li>

                <li class="nav-item <#if history == "manage">active</#if>">
                    <a class="nav-link waves-effect" href="/main/manage">Управление</a>
                </li>

                <li class="nav-item <#if history == "demo">active</#if>">
                    <a class="nav-link dropdown-toggle" href="#" id="demoDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Примеры темплейта
                    </a>
                    <div class="dropdown-menu" aria-labelledby="demoDropdown">
                        <a class="dropdown-item" href="/demo/home">Home</a>
                        <a class="dropdown-item" href="/demo/post">Post</a>
                        <a class="dropdown-item" href="/demo/category">Category</a>
                        <div class="dropdown-divider"></div>
                    </div>
                </li>

            </ul>

            <!-- Right -->
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a href="#" class="nav-link border border-light rounded waves-effect"
                       target="_blank">
                        <i class="fab fa-github mr-2"></i>Выйти
                    </a>
                </li>
            </ul>

        </div>

    </div>
</nav>

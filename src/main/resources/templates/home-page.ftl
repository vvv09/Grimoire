<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>GRIMOIRE</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="/css/style.min.css" rel="stylesheet">
    <style type="text/css">
        /* Necessary for full page carousel*/
        html,
        body,
        header,
        .view {
            height: 100%;
        }

        /* Carousel*/
        .carousel,
        .carousel-item,
        .carousel-item.active {
            height: 100%;
        }

        .carousel-inner {
            height: 100%;
        }

        @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #1C2331 !important;
            }
        }

    </style>
</head>

<body>

<#--<!-- Navbar &ndash;&gt;-->
<#--<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">-->
<#--    <div class="container">-->

<#--        <!-- Brand &ndash;&gt;-->
<#--        <a class="navbar-brand" href="https://mdbootstrap.com/docs/jquery/" target="_blank">-->
<#--            <strong>Grimoire</strong>-->
<#--        </a>-->

<#--        <!-- Collapse &ndash;&gt;-->
<#--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"-->
<#--                aria-expanded="false" aria-label="Toggle navigation">-->
<#--            <span class="navbar-toggler-icon"></span>-->
<#--        </button>-->

<#--        <!-- Links &ndash;&gt;-->
<#--        <div class="collapse navbar-collapse" id="navbarSupportedContent">-->

<#--            <!-- Left &ndash;&gt;-->
<#--            <ul class="navbar-nav mr-auto">-->
<#--                <li class="nav-item">-->
<#--                    <a class="nav-link waves-effect" href="/books">Books</a>-->
<#--                </li>-->
<#--                <li class="nav-item">-->
<#--                    <a class="nav-link waves-effect" href="/authors">Authors</a>-->
<#--                </li>-->
<#--                <li class="nav-item">-->
<#--                    <a class="nav-link waves-effect" href="/tags">Тags</a>-->
<#--                </li>-->
<#--            </ul>-->

<#--            <!-- Right &ndash;&gt;-->
<#--            <ul class="navbar-nav nav-flex-icons">-->
<#--                <li class="nav-item">-->
<#--                    <a href="https://www.facebook.com/mdbootstrap" class="nav-link" target="_blank">-->
<#--                        <i class="fab fa-facebook-f"></i>-->
<#--                    </a>-->
<#--                </li>-->
<#--                <li class="nav-item">-->
<#--                    <a href="https://twitter.com/MDBootstrap" class="nav-link" target="_blank">-->
<#--                        <i class="fab fa-twitter"></i>-->
<#--                    </a>-->
<#--                </li>-->
<#--                <li class="nav-item">-->
<#--                    <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="nav-link border border-light rounded waves-effect waves-light"-->
<#--                       target="_blank">-->
<#--                        <i class="fab fa-github mr-2"></i>MDB GitHub-->
<#--                    </a>-->
<#--                </li>-->
<#--            </ul>-->

<#--        </div>-->

<#--    </div>-->
<#--</nav>-->
<#--<!-- Navbar &ndash;&gt;-->
<!-- data-ride="carousel" -->
<!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade">

    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">
            <div class="view">

                <!--Video source-->
                <video class="video-intro" autoplay loop muted>
                    <source src="https://mdbootstrap.com/img/video/animation-intro.mp4" type="video/mp4"/>
                </video>

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Grimoire</strong>
                        </h1>

                        <p>
                            <strong>Электронная библиотека</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>Все книги в кармане.</strong>
                        </p>

                        <a href="/main" class="btn btn-outline-white btn-lg">Войти
                            <i class="fas fa-book ml-2"></i>
                        </a>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/First slide-->

        <!--Second slide-->
        <div class="carousel-item">
            <div class="view"
                 style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/77.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Grimoire</strong>
                        </h1>

                        <p>
                            <strong>Электронная библиотека</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>Все книги в кармане.</strong>
                        </p>

                        <a target="_blank" href="/books" class="btn btn-outline-white btn-lg">Начать
                            <i class="fas fa-book ml-2"></i>
                        </a>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/Second slide-->

        <!--Third slide-->
        <div class="carousel-item">
            <div class="view">

                <!--Video source-->
                <video class="video-intro" autoplay loop muted>
                    <source src="https://mdbootstrap.com/img/video/forest.mp4" type="video/mp4"/>
                </video>

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

                    <!-- Content -->
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">
                            <strong>Grimoire</strong>
                        </h1>

                        <p>
                            <strong>Электронная библиотека</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>Все книги в кармане.</strong>
                        </p>

                        <a target="_blank" href="/main" class="btn btn-outline-white btn-lg">Начать
                            <i class="fas fa-book ml-2"></i>
                        </a>
                    </div>
                    <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

            </div>
        </div>
        <!--/Third slide-->

    </div>
    <!--/.Slides-->

    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->

</div>
<!--/.Carousel Wrapper-->

<!--Main layout-->
<main>
    <div class="container">
        <section>
            <hr class="my-5">
            <h3 class="h3 text-center mb-5">о Библиотеке</h3>
            <div class="row wow fadeIn">
                <div class="col-lg-6 col-md-12 px-4">
                    <div style="height:30px"></div>
                    <div class="row">
                        <div class="col-1 mr-3">
                            <i class="fas fa-book fa-2x blue-text"></i>
                        </div>
                        <div class="col-10">
                            <h5 class="feature-title">Книги</h5>
                            <p class="grey-text">Количество книг в библоитеке - ${amountBook}.</p>
                        </div>
                    </div>
                    <div style="height:30px"></div>
                    <div class="row">
                        <div class="col-1 mr-3">
                            <i class="fas fa-user-circle fa-2x cyan-text"></i>
                        </div>
                        <div class="col-10">
                            <h5 class="feature-title">Авторы</h5>
                            <p class="grey-text">Количество зарегистрированных автров - ${amountAuthor}.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div style="height:30px"></div>
                    <div class="row">
                        <div class="col-1 mr-3">
                            <i class="fas fa-book fa-2x blue-text"></i>
                        </div>
                        <div class="col-10">
                            <h5 class="feature-title">Книги</h5>
                            <p class="grey-text">Количество книг в библоитеке - ${amountBook}.</p>
                        </div>
                    </div>
                    <div style="height:30px"></div>
                    <div class="row">
                        <div class="col-1 mr-3">
                            <i class="fas fa-user-circle fa-2x cyan-text"></i>
                        </div>
                        <div class="col-10">
                            <h5 class="feature-title">Авторы</h5>
                            <p class="grey-text">Количество зарегистрированных автров - ${amountAuthor}.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<!--Main layout-->

<!--Footer-->
<footer class="page-footer text-center font-small mt-4 wow fadeIn">

    <!--Call to action-->
    <div class="pt-4">
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/docs/jquery/getting-started/download/"
           target="_blank" role="button">Download MDB
            <i class="fas fa-download ml-2"></i>
        </a>
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/education/bootstrap/" target="_blank"
           role="button">Start free tutorial
            <i class="fas fa-graduation-cap ml-2"></i>
        </a>
    </div>
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
        <a href="https://www.facebook.com/mdbootstrap" target="_blank">
            <i class="fab fa-facebook-f mr-3"></i>
        </a>

        <a href="https://twitter.com/MDBootstrap" target="_blank">
            <i class="fab fa-twitter mr-3"></i>
        </a>

        <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
            <i class="fab fa-youtube mr-3"></i>
        </a>

        <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
            <i class="fab fa-google-plus-g mr-3"></i>
        </a>

        <a href="https://dribbble.com/mdbootstrap" target="_blank">
            <i class="fab fa-dribbble mr-3"></i>
        </a>

        <a href="https://pinterest.com/mdbootstrap" target="_blank">
            <i class="fab fa-pinterest mr-3"></i>
        </a>

        <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
            <i class="fab fa-github mr-3"></i>
        </a>

        <a href="http://codepen.io/mdbootstrap/" target="_blank">
            <i class="fab fa-codepen mr-3"></i>
        </a>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
        © 2019 Copyright:
        <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> MDBootstrap.com </a>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.min.js"></script>
<!-- Initializations -->
<script type="text/javascript">
    // Animations initialization
    new WOW().init();
</script>
</body>

</html>

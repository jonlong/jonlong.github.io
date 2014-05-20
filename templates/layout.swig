<!DOCTYPE html>
    <!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
    <!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{% block title %}{{blog.title}}{% endblock %}</title>
        <meta name="description" content="{{description}}" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin,cyrillic-ext,latin-ext,cyrillic" />
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>

        <div id="wrapper">
            <header class="site-header">
                <div class="container">
                    <div class="site-title-wrapper">
                        <h1 class="site-title"><a title="{{blog.title}}" href="/">{{blog.title}}</a></h1>
                        <a class="button-square" href="/rss"><i class="fa fa-rss"></i></a>
                    </div>

                    <ul class="site-nav">
                        <li class="site-nav-item"><a title="" href="#">Latest Post</a></li>
                        <li class="site-nav-item"><a title="" href="#">Browse Posts</a></li>
                        <li class="site-nav-item"><a title="About | {{blog.title}}" href="/about">About</a></li>
                    </ul>
                </div>
            </header>

            <div class="content">
                {% block content %}{% endblock %}
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <div class="site-title-wrapper">
                    <h1 class="site-title"><a title="{{blog.title}}" href="/">{{blog.title}}</a></h1>
                    <a class="button-square button-jump-top js-jump-top" href="#"><i class="fa fa-angle-up"></i></a>
                </div>

                <p class="footer-copyright">&copy; {{ date | date('Y') }} / Jon Long</p>
            </div>
        </footer>


        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X');ga('send','pageview');
        </script>
    </body>
</html>
<!DOCTYPE html>
    <!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
    <!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="{{description}}" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{% block title %}{{blog.title}}{% endblock %}</title>

        <link rel="stylesheet" href="/assets/css/screen.css">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=PT+Serif+Caption|PT+Serif|Open+Sans:400,700,800" />

        <!--[if lte IE 8]><!-->
        <script type="text/javascript" src="/assets/js/polyfills/svg4everybody.ie8.min.js"></script>
        <!--<![endif]-->

        <!--[if gt IE 8]><!-->
        <script type="text/javascript" src="/assets/js/polyfills/svg4everybody.min.js"></script>
        <!--<![endif]-->
    </head>
    <body class="{% block bodyclass %}{% endblock %}">

        <div class="container">

            <header class="page-head">

                <div class="page-head__left-block">
                    <a href="/">
                        <svg class="icon icon--logo" role="img" title="Logo: linesandwaves">
                            <use xlink:href="/assets/images/icons.svg#logo"></use>
                        </svg>
                    </a>
                </div>

                <nav class="page-head__center-block">
                    <ul>
                        <li class="page-head__nav-item"><a href="/about">About</a></li>
                        <li class="page-head__nav-item"><a href="/about">Work</a></li>
                        <li class="page-head__nav-item"><a href="/about">Writing</a></li>
                    </ul>
                </nav>

                <div class="page-head__right-block">
                    <a class="btn" href="mailto:jon@linesandwaves.com">Get In Touch</a>
                </div>

            </header>

            {% block content %}{% endblock %}

        </div>


        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-1091211-1');ga('send','pageview');
        </script>
    </body>
</html>
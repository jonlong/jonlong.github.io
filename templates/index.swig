{% extends 'layout.swig' %}

{% block bodyclass %}home{% endblock %}

{% block content %}

<section class="home__section jumbotron row">

    <h1 class="jumbotron__title">Get to the finish line.</h1>

    <div class="jumbotron__caption">
        <p>Need some front-end development muscle to close out a big project? Kicking off into brand new territory? Looking for seasoned technical guidance?</p>
        <p>I'll help you get there.
        {# <a class="jumbotron__caption-link btn btn--negative" href="mailto:jon@linesandwaves.com">More About Me</a> #}
        <a class="jumbotron__caption-link btn btn--negative" href="mailto:jon@linesandwaves.com">Get In Touch</a>
        </p>
    </div>

</section>

<section class="home__section row">

    <h2 class="hidden">Services</h2>

    <ul>

        <li class="service">
            <svg role="img" class="icon service__icon" title="Icon: HTML Brackets">
                <use xlink:href="/assets/images/icons.svg#code"></use>
            </svg>
            <h3 class="service__header">Hire a Front-End Engineer</h3>
            <p class="service__blurb">Responsive design, OOCSS, Node.js, and modern web tools including Webpack and React.</p>
        </li>

        <li class="service">
            <svg role="img" class="icon service__icon" title="Icon: Team">
                <use xlink:href="/assets/images/icons.svg#organization"></use>
            </svg>
            <h3 class="service__header">Build a Team Workflow</h3>
            <p class="service__blurb">I'll help you to identify the processes and conventions that will supercharge your team's performance.</p>
        </li>

        <li class="service">
            <svg role="img" class="icon service__icon" title="Icon: Stethoscope">
                <use xlink:href="/assets/images/icons.svg#stethoscope"></use>
            </svg>
            <h3 class="service__header">Get an Expert Opinion</h3>
            <p class="service__blurb">From client, to management, to design and development, I've been on every side of the equation.</p>
        </li>

        <li class="service">
            <svg role="img" class="icon service__icon" title="Icon: Site Map">
                <use xlink:href="/assets/images/icons.svg#sitemap"></use>
            </svg>
            <h3 class="service__header">Plan Your Next Project</h3>
            <p class="service__blurb">Translate your business goals into a responsible roadmap and a lean set of technical requirements.</p>
        </li>

    </ul>

</section>

<section class="home__section row">

    <h2 class="home__section-header">Folks I've Worked With</h2>

    <ul class="subtraction-list">

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">National Geographic</a> #}
            National Geographic
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Miller Coors</a> #}
            Miller Coors
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">General Electric</a> #}
            General Electric
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Deloitte</a> #}
            Deloitte
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Sweetgreen</a> #}
            Sweetgreen
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Grandstand</a> #}
            Grandstand
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Honest Tea</a> #}
            Honest Tea
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">Alexandra Avakian</a> #}
            Alexandra Avakian
        </li>

        <li class="subtraction-list__item">
            {# <a href="#" class="subtraction-list__link">iStrategyLabs</a> #}
            iStrategyLabs
        </li>

    </ul>

</section>

<section class="home__section home__section--readability row">

    <h2 class="home__section-header">Let's Work Together</h2>

    <ol class="big-list">

        <li class="big-list__item"><a href="mailto:jon@linesandwaves.com">Send me an email</a> describing your project. I'd love to know the reason it's starting, the project's budget and business goals, and a quick sense for the kind of help you need.</li>

        <li class="big-list__item">Let's chat! I'll schedule an in-person or virtual meeting based on your location and availability. We'll use this time to go over your project and the ways that I can help achieve its business goals.</li>

        <li class="big-list__item">We'll agree on a scope of work, and I'll draw up a detailed quote and outline an approach based on those terms. I'll send it your way and we'll work together to lock it in.</li>

        <li class="big-list__item">Let's get down to it! I'll help you get from A to B, and feel confident, informed, and satisfied along the way.</li>

    </ol>

</section>

{% endblock %}

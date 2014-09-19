{% extends 'layout.swig' %}

{% block content %}

<section class="jumbotron row">

    <h1 class="jumbotron__title">Get to the finish line.</h1>

    <div class="jumbotron__caption">
        <p>Need some front-end development muscle to close out a big project? Kicking off into brand new territory? Looking for seasoned technical guidance?</p>
        <p>I'll help you get there.</p>
    </div>

</section>

<section class="row">
    <h2 class="hidden">Services</h2>
    <ul>
        <li class="service">
            <svg role="img" class="icon icon-code" title="Icon: HTML Brackets">
                <use xlink:href="/assets/images/icons.svg#code"></use>
            </svg>
            <h3>Hire a Front-End Engineer</h3>
            <p>Need some front-end muscle to close out a big project?</p>
        </li>
        <li class="service">
            <svg role="img" class="icon icon-team" title="Icon: Team">
                <use xlink:href="/assets/images/icons.svg#organization"></use>
            </svg>
            <h3>Augment Your Team</h3>
            <p>Need some front-end muscle to close out a big project?</p>
        </li>
        <li class="service">
            <svg role="img" class="icon icon-stethoscope" title="Icon: Stethoscope">
                <use xlink:href="/assets/images/icons.svg#stethoscope"></use>
            </svg>
            <h3>Get an Expert Opinion</h3>
            <p>Need some front-end muscle to close out a big project?</p>
        </li>
        <li class="service">
            <svg role="img" class="icon icon-sitemap" title="Icon: Site Map">
                <use xlink:href="/assets/images/icons.svg#sitemap"></use>
            </svg>
            <h3>Plan Your Next Project</h3>
            <p>Need some front-end muscle to close out a big project?</p>
        </li>
    </ul>
</section>

<section class="row">
    <h2>Let's Work Together</h2>
    <ol>
        <li>Send me a quick email describing your project, the scope, and a quick sense for the kind of help you need.</li>
        <li>We'll have a chat. I'll schedule an in-person or vitual meeting based on your location and availability. We'll use this time to see if we're a good fit for one another.</li>
        <li>We'll agree on a scope of work, and I'll draw up a price sheet and contract based on those terms. I'll send it your way and we'll work together to lock it in.</li>
        <li>Let's get down to it! I'll help you get from A to B, and feel confident, informed, and satisfied along the way.</li>
    </ol>
</section>

{% endblock %}

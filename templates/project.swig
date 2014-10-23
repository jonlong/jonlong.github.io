{% extends 'layout.swig' %}

{% block bodyclass %}project{% endblock %}

{% block content %}

<section class="project__section-header">

    <header>
        <h1 class="project__header">{{title}}</h1>
            {% if roles %}
            <ul class="project__roles">

                {% for role in roles %}
                <li class="project__role">{{role}}</li>
                {% endfor %}

            </ul>
            {% endif %}

    </header>

</section>

<section class="project__content row">

    <div class="project__content-container">

        {% if url %}
        <div class="project__link">
            <a class="btn" href="{{url}}">Visit Site</a>
        </div>
        {% endif %}

        <p class="project__lead">{{lead}}</p>


        {% if screens %}
        <div class="project__screen-collection">

            {% for screen in screens %}
            <picture>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                <source srcset="examples/images/extralarge.jpg" media="(min-width: 1000px)">
                <source srcset="examples/images/large.jpg" media="(min-width: 800px)">
                <!--[if IE 9]></video><![endif]-->
                <img srcset="examples/images/medium.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
            </picture>
            {% endfor %}

        </div>
        {% endif %}

        {{contents | safe}}

    </div>

</section>

{% endblock %}

{% block scripts %}

<script src="/assets/js/polyfills/picturefill.min.js" async></script>

{% endblock %}
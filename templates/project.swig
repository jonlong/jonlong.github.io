{% extends 'layout.swig' %}

{% block bodyclass %}project{% endblock %}

{% block content %}

<section class="project__section-header">

    <header>
        <h1 class="project__header">National Geographic</h1>
        <ul class="project__roles">
            <li class="project__role">Front End Development</li>
            <li class="project__role">Django Admin Design</li>
        </ul>
    </header>

</section>

<section class="project__content row">

    <div class="project__content-container">

        <div class="project__link">
            <a class="btn">Visit Site</a>
        </div>

        <p class="project__lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consequat nisl dui, quis accumsan mauris efficitur at. Suspendisse lacinia, leo vulputate sodales fringilla, purus odio mollis enim, sit amet mollis magna leo quis sem.</p>

        <div class="project__screen-collection">

            <picture>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                <source srcset="examples/images/extralarge.jpg" media="(min-width: 1000px)">
                <source srcset="examples/images/large.jpg" media="(min-width: 800px)">
                <!--[if IE 9]></video><![endif]-->
                <img srcset="examples/images/medium.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
            </picture>

            <picture>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                <source srcset="examples/images/extralarge.jpg" media="(min-width: 1000px)">
                <source srcset="examples/images/large.jpg" media="(min-width: 800px)">
                <!--[if IE 9]></video><![endif]-->
                <img srcset="examples/images/medium.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
            </picture>

            <picture>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                <source srcset="examples/images/extralarge.jpg" media="(min-width: 1000px)">
                <source srcset="examples/images/large.jpg" media="(min-width: 800px)">
                <!--[if IE 9]></video><![endif]-->
                <img srcset="examples/images/medium.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
            </picture>

        </div>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consequat nisl dui, quis accumsan mauris efficitur at. Suspendisse lacinia, leo vulputate sodales fringilla, purus odio mollis enim, sit amet mollis magna leo quis sem.</p>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce consequat nisl dui, quis accumsan mauris efficitur at. Suspendisse lacinia, leo vulputate sodales fringilla, purus odio mollis enim, sit amet mollis magna leo quis sem.</p>

        <figure class="project__media">
            <picture>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                <source srcset="examples/images/extralarge.jpg" media="(min-width: 1000px)">
                <source srcset="examples/images/large.jpg" media="(min-width: 800px)">
                <!--[if IE 9]></video><![endif]-->
                <img srcset="examples/images/medium.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
            </picture>
            <figcaption class="project__media-caption">This is a caption for the photo above</figcaption>
        </figure>

    </div>

</section>

{% endblock %}

{% block scripts %}

<script src="/assets/js/polyfills/picturefill.min.js" async></script>

{% endblock %}
{% extends 'layout.swig' %}

{% block content %}
    <div id="post-index" class="container">
        <ol class="post-list">
        {# {{collections | json}} #}
            {% for post in collections.posts %}
                <li class="post-stub" >
                    <a title="{{post.title}}" href="{{post.url}}">
                        <h4 class="post-stub-title">{{post.title}}</h4>
                        <time class="post-stub-date" datetime="{{post.published_at}}">Published {{ post.date | date('Y') }}</time>
                    </a>
                </li>
            {% endfor %}
        </ol>
    </div>
{% endblock %}

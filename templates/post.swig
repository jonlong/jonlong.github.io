{% extends 'layout.swig' %}

{% block title %}{{title}}{% endblock %}

{% block content %}
    <article class="post-container">
        <header class="post-header">
            <h1 class="post-title">{{title}}</h1>
        </header>

        <div class="post-content">
            {{contents | safe}}
        </div>
    </article>
{% endblock %}
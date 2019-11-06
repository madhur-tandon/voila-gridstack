{%- extends 'gridstack_base.tpl' -%}
{% from 'mathjax.tpl' import mathjax %}

{% block any_cell scoped %}
    {% set cell_jupyter_dashboards = cell.metadata.get('extensions', {}).get('jupyter_dashboards', {}) %}
    {% set view_data = cell_jupyter_dashboards.get('views', {}).get(active_view, {}) %}
    {% set hidden = view_data.get('hidden') %}
    {%- if not hidden  %} 
        {{ super() }}
    {% endif %}
{% endblock any_cell %}

{% macro truncate_date(date_col, date_part='month') %}
    DATE_TRUNC({{ date_part }}, {{ date_col }})
{% endmacro %}

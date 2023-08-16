{% test assert_column_greater_than_0(model, column_name) %}

SELECT
    *
FROM {{ model }}
WHERE {{ column_name }} <= 0
{% endtest %}

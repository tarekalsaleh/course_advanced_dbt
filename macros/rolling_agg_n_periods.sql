{% macro rolling_agg_n_periods(column_name, partition_by, order_by, agg='avg', n=6) %}
    {{ agg }} ( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN n PRECEDING AND CURRENT ROW
            ) AS {{ agg }}_{{ n }}_periods_{{ column_name }}
{% endmacro %}

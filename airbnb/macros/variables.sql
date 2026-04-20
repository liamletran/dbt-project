{% macro learn_variables() %}
    {% set my_variable = "Hello, dbt!" %}
    -- jinja variables
    {{ log("Hello " ~ my_variable, info=True)  }}
    -- dbt variables
    {{ log("Hello " ~ var("user_name", "NO USERNAME IS PASSED") ~ "!", info=True) }}
    {{ log("Hello dbt user " ~ var("user_name", "NO USERNAME IS PASSED") ~ "!", info=True) }}
{% endmacro %}
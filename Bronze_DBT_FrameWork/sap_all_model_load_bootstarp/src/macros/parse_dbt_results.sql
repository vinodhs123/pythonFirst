{% macro parse_dbt_results(results) %}
    {%- set parsed_results = [] %}
    {% for run_result in results %}
        {% set run_result_dict = run_result.to_dict() %}
        {% set node = run_result_dict.get('node') %}
        {% set rows_affected = run_result_dict.get('adapter_response', {}).get('rows_affected', 0) %}
        {%- if not rows_affected -%}
            {% set rows_affected = 0 %}
        {%- endif -%}
        {% set parsed_result_dict = {
                'result_id': invocation_id ~ '.' ~ node.get('unique_id'),
                'invocation_id': invocation_id,
                'unique_id': node.get('unique_id'),
                'database_name': node.get('database'),
                'schema_name': node.get('schema'),
                'name': node.get('name'),
                'resource_type': node.get('resource_type'),
                'status': run_result_dict.get('status'),
                'execution_time': run_result_dict.get('execution_time'),
                'rows_affected': rows_affected,
                'execution_date': (modules.datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
                }%}
        {% do parsed_results.append(parsed_result_dict) %}
    {% endfor %}
    {{ return(parsed_results) }}
{% endmacro %}
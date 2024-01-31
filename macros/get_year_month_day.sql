{% macro get_year_month_day(date_column) %}

    ({{ date_column }}) AS Full_Order_Date,
    EXTRACT(YEAR FROM {{ date_column }}) AS Order_Year,
    EXTRACT(MONTH FROM {{ date_column }}) AS Order_Month,
    EXTRACT(DAY FROM {{ date_column }}) AS Order_Day

{% endmacro %}
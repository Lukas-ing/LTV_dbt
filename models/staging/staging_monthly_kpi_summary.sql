SELECT to_date(TRANSACTION_MONTH_STR,'YYYY-MM') AS month,
NEW_CUSTOMERS,
order_count,
TOTAL_REVENUE,
total_spend,
online_spend_x AS online_spend,
round("AOV"::numeric,2) AS aov,
round("CAC"::numeric,2) AS cac,
round("ROAS"::numeric,2) AS roas,
round("ROAS_online"::numeric,2) AS roas_online
FROM {{source('data', 'monthly_kpi_summary')}}
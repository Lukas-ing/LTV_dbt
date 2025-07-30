SELECT to_date(TRANSACTION_MONTH_STR,'YYYY-MM') AS month,
NEW_CUSTOMERS,
order_count,
TOTAL_REVENUE,
total_spend,
online_spend_x AS online_spend,
"AOV" AS aov,
"CAC" AS cac,
"ROAS" AS roas,
"ROAS_online" AS roas_online
FROM {{source('data', 'monthly_kpi_summary')}}
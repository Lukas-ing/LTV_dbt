SELECT *, 
date_part('year', o."transaction_date") AS transaction_year,
date_part('month', o."transaction_date" ) AS transaction_month,
to_char(o."transaction_date",'FMmon') AS transaction_month_str,
date_part('day', o."transaction_date") AS transaction_day_of_month,
to_char( o."transaction_date",'FMday') AS transaction_day_of_week
FROM {{ref('staging_online_sales')}} o 
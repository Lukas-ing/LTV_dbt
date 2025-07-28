SELECT *,
CAST(TO_date(d."Month",'Mon') + INTERVAL '2019 year'AS DATE) AS start_date,
CAST(TO_date(d."Month",'Mon') + INTERVAL '1 month 2019 year' - INTERVAL '1 day' AS date) AS end_date
FROM {{ref('staging_discount_coupon')}} d
WITH discounts_month AS (
SELECT a.TRANSACTION_DATE AS date, 
round(sum(a.AVG_PRICE*a.QUANTITY*a.DISCOUNT_PCT*0.01)::numeric,2) AS total_discounted_oavg,
round(sum((a.AVG_PRICE*a.QUANTITY*a.DISCOUNT_PCT)/(100-a.DISCOUNT_PCT))::numeric,2) AS total_discounted_sum_adavg
FROM {{ref('mart_all_data')}}a
WHERE a.COUPON_STATUS = 'Used' --OR a.COUPON_STATUS = 'Clicked'
GROUP BY "date" 
ORDER BY "date")
Select *
from {{ref('prep_marketing_spend')}}
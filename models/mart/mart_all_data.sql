SELECT o.TRANSACTION_DATE, 
o.TRANSACTION_ID, 
o.CUSTOMER_ID,
c.GENDER  AS customer_gender,
c."location" AS customer_location,
c.TENURE_MONTHS AS customer_tenure_months,
o.PRODUKT_SKU,
o.PRODUCT_CATEGORY,
o.QUANTITY,
o.AVG_PRICE,
o.DELIVERY_CHARGES,
o.revenue,
o.COUPON_STATUS,
d.discount_pct,
t.gst AS gst_onsale,
m.OFFLINE_SPEND AS daily_offline, 
m.ONLINE_SPEND AS daily_online,
--o.TRANSACTION_YEAR,
o.TRANSACTION_MONTH,
o.TRANSACTION_MONTH_STR
--o.TRANSACTION_DAY_OF_MONTH,
--o.TRANSACTION_DAY_OF_WEEK
FROM {{ref('prep_online_sales')}} o
LEFT JOIN {{ref('prep_customers')}} c USING (customer_id)
LEFT JOIN {{ref('prep_tax_amount')}} t USING (PRODUCT_CATEGORY)
LEFT JOIN {{ref('prep_marketing_spend')}} m ON m."date" = o.TRANSACTION_DATE 
LEFT JOIN {{ref('prep_discount_coupon')}} d ON (o.TRANSACTION_MONTH_STR, o.PRODUCT_CATEGORY)   =  (d."month", d.product_category)

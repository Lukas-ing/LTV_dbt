SELECT o."customer_id",
o."transaction_id",
o."transaction_date",
o."produkt_sku",
o."product_category", 
o."quantity",
o."avg_price",
o."delivery_charges",
o."coupon_status",
o."transaction_month",
o."transaction_month_str",
o."transaction_day_of_month",
o."transaction_day_of_week"
from {{ref('prep_online_sales')}} o
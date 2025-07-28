Select o."CustomerID" AS customer_id,
o."Transaction_ID" AS transaction_id,
to_date(o."Transaction_Date",'DD/MM/YYY' ) AS transaction_date,
o."Product_SKU" AS produkt_sku,
o."Product_Description" AS product_description,
o."Product_Category" AS product_description,
o."Quantity" AS quantity,
o."Avg_Price" AS avg_price,
o."Delivery_Charges" AS delivery_charges,
o."Coupon_Status" AS coupon_status
from {{source('data', 'online_sales')}} o
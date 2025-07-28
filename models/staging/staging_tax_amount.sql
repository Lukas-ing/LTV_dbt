SELECT t."Product_Category" AS product_category,
t."GST" AS gst
FROM {{source('data', 'tax_amount')}} t
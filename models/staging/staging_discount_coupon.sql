SELECT d."Month" AS month,
d."Product_Category" AS product_category,
d."Coupon_Code" AS coupon_code,
d."Discount_pct" AS discount_pct
FROM {{source('data', 'discount_coupon')}} d
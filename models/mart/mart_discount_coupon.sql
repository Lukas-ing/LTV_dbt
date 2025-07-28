Select d."start_date",d."month",d."end_date",
d."product_category",
d."discount_pc"
from {{ref(prep_discount_coupon)}} d
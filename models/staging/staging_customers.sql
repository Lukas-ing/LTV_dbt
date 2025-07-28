SELECT c."CustomerID" AS customer_id,
c."Gender" AS gender,
c."Location" AS location,
c."Tenure_Months" AS tenure_months
FROM {{source('data', 'customers')}}
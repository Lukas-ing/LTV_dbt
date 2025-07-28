SELECT c."customer_id",
c."gender",
CASE 
	WHEN c."location" = 'Chicago' THEN 'Illinois'
	ELSE c."location" 
END
AS location,
c."tenure_months"
FROM {{ref('staging_customers')}} c
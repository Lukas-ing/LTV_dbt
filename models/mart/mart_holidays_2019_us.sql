SELECT h.*,
CASE 
	WHEN lower(h.type) IN ('christian','hebrew','hinduism','muslim','local holiday, christian','national holiday, christian') THEN TRUE 
	ELSE FALSE 
END AS religious_holiday,
CASE 
	WHEN lower(h.type) IN ('local holiday','local holiday, christian') THEN TRUE 
	ELSE FALSE 
END AS local_holiday,
CASE 
	WHEN lower(h.type) IN ('national holiday','national holiday, christian') THEN TRUE 
	ELSE FALSE 
END AS national_holiday
from {{ref('prep_holidays_2019_us')}} h
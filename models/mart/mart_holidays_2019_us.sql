SELECT h.*,
CASE 
	WHEN trim(split_part(lower(h.type),',',1)) IN ('christian','hebrew','hinduism','muslim') THEN TRUE 
	WHEN trim(split_part(lower(h.type),',',2)) IN ('christian','hebrew','hinduism','muslim') THEN TRUE 
	ELSE FALSE 
END AS religious_holiday,
CASE 
	WHEN trim(split_part(lower(h.type),',',1)) IN ('local holiday') THEN TRUE 
	WHEN trim(split_part(lower(h.type),',',2)) IN ('local holiday') THEN TRUE 
	ELSE FALSE 
END AS local_holiday,
CASE 
	WHEN trim(split_part(lower(h.type),',',1)) IN ('national holiday') THEN TRUE 
	WHEN trim(split_part(lower(h.type),',',2)) IN ('national holiday') THEN TRUE 
	ELSE FALSE 
END AS national_holiday,
CASE 
	WHEN trim(split_part(lower(h.type),',',1)) IN ('worldwide observance') THEN TRUE 
	WHEN trim(split_part(lower(h.type),',',2)) IN ('worldwide observance') THEN TRUE 
	ELSE FALSE 
END AS worldwide_observance
from {{ref('prep_holidays_2019_us')}} h
order by h.date asc
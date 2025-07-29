SELECT DISTINCT ON (h.name)
h.name,
h.description,
to_date(h.date_iso, 'YYYY-MM-DD')as date,
h.type
FROM {{source('external', 'holidays_2019_us')}} H
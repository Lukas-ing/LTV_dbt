SELECT to_date(m."Date",'MM/DD/YYYY') AS date,
m."Offline_Spend" AS offline_spend,
m."Online_Spend" AS online_spend
FROM {{source('data', 'marketing_spend')}} m
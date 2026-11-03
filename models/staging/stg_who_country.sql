SELECT DISTINCT
    iso3 AS country_code,
    country_name,
    who_region AS region
FROM sample_data.who_country
WHERE country_name IS NOT NULL
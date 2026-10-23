SELECT DISTINCT
    iso3 AS country_code,
    country_name,
    who_region AS region
FROM {{ source('external_sample', 'ambient_air_quality') }}
WHERE country_name IS NOT NULL

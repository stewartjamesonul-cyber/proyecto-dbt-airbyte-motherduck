{{
    config(materialized='table')
}}

SELECT
    crypto_id,
    crypto_name,
    symbol,
    current_price,
    market_cap,
    total_volume,
    market_cap_category
FROM {{ ref('int_crypto_enriched') }}
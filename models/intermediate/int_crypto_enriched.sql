SELECT
    crypto_id,
    crypto_name,
    symbol,
    current_price,
    market_cap,
    total_volume,
    CASE 
        WHEN market_cap > 10000000000 THEN 'Large Cap'
        ELSE 'Mid/Small Cap'
    END AS market_cap_category
FROM {{ ref('stg_crypto_prices') }}
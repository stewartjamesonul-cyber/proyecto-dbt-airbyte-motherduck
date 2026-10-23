SELECT
    id AS crypto_id,
    name AS crypto_name,
    symbol,
    current_price,
    market_cap,
    total_volume,
    _airbyte_extracted_at AS loaded_at
FROM {{ source('crypto_raw', 'market_prices') }}

WITH temp_table AS (
    SELECT
        block_time,
        token_a_symbol,
        token_b_symbol,
        token_a_amount,
        token_b_amount,
        usd_amount,
        token_b_address,
        token_a_address,
        project,
        version
    FROM dex."trades"
WHERE token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200'
), temp_table2 AS (
SELECT
    DATE_TRUNC('day', block_time) as dt,
    CASE WHEN token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' THEN token_b_symbol ELSE token_a_symbol END AS token_traded_against,
    SUM(usd_amount) AS sum_usd
FROM temp_table
GROUP BY 1,2
ORDER BY dt DESC
)
SELECT
SUM(sum_usd) AS total_volume
FROM temp_table2

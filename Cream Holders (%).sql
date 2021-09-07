WITH temp_table AS (
SELECT 
    evt_block_time,
    tr."from" AS address,
    -tr.value AS amount,
    contract_address
FROM erc20."ERC20_evt_Transfer" tr
WHERE contract_address = '\x2ba592F78dB6436527729929AAf6c908497cB200'

UNION ALL

SELECT
    evt_block_time,
    tr."to" AS address,
    tr.value AS amount,
    contract_address
FROM erc20."ERC20_evt_Transfer" tr
WHERE contract_address = '\x2ba592F78dB6436527729929AAf6c908497cB200'
), temp_table2 AS (
SELECT
    address,
    SUM(amount/10^18) AS balance
FROM temp_table tr
LEFT JOIN erc20.tokens tok ON tr.contract_address = tok.contract_address
GROUP BY 1
ORDER BY 2 DESC
)
SELECT
    address,
    balance,
    (balance / 9000000) * 100 AS percentage
FROM temp_table2
WHERE balance >= 1

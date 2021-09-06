WITH transfers AS
  ( SELECT evt_tx_hash AS tx_hash,
           tr."from" AS address, -tr.value AS amount,
                                  contract_address
   FROM erc20."ERC20_evt_Transfer" tr
   WHERE contract_address IN ( '\x2ba592F78dB6436527729929AAf6c908497cB200' )
   UNION ALL SELECT evt_tx_hash AS tx_hash,
                    tr."to" AS address,
                    tr.value AS amount,
                    contract_address
   FROM erc20."ERC20_evt_Transfer" tr
   WHERE contract_address IN ( '\x2ba592F78dB6436527729929AAf6c908497cB200' ) ),
     transferAmounts AS
  ( SELECT contract_address,
           address,
           sum(amount)/1e18 AS poolholdings
   FROM transfers
   GROUP BY 1,
            2
   ORDER BY 3 DESC)


SELECT (CASE
            WHEN contract_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' THEN 'CREAM'
            ELSE 'Other'
        END) Contract_Address,
       count(CONCAT('0x', SUBSTRING(address::text, 3))) AS Holders
FROM transferAmounts
WHERE poolholdings > 0
GROUP BY contract_address 
order by 2 desc

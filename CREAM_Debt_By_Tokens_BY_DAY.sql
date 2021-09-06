WITH ctokens (symbol, contract_address, underlying_decimals, underlying_token_address) AS (VALUES
   ('crETH'::text,   '\xD06527D5e56A3495252A528C4987003b712860eE'::bytea, 18::numeric, '\xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2'::bytea),
   ('crUSDT'::text,   '\x797AAB1ce7c01eB727ab980762bA88e7133d2157'::bytea, 6::numeric, '\xdAC17F958D2ee523a2206206994597C13D831ec7'::bytea),
--   ('crUSDT'::text,   '\x08965b0b53dd70292de6592952c8d035820e8894'::bytea, 6::numeric, '\xdAC17F958D2ee523a2206206994597C13D831ec7'::bytea),
   ('crUSDC'::text,   '\x44fbebd2f576670a6c33f6fc0b00aa8c5753b322'::bytea, 6::numeric, '\xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48'::bytea),
   ('crYFI'::text,   '\xCbaE0A83f4f9926997c8339545fb8eE32eDc6b76'::bytea, 18::numeric, '\x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e'::bytea),
   ('crBAL'::text,  '\xcE4Fe9b4b8Ff61949DCfeB7e03bc9FAca59D2Eb3'::bytea, 18::numeric, '\xba100000625a3754423978a60c9317c58a424e3D'::bytea),
   ('crCOMP'::text,  '\x19D1666f543D42ef17F66E376944A22aEa1a8E46'::bytea, 18::numeric, '\xc00e94Cb662C3520282E6f5717214004A7f26888'::bytea),
   ('crYCRV'::text,   '\x9baF8a5236d44AC410c0186Fe39178d5AAD0Bb87'::bytea, 18::numeric, '\xdF5e0e81Dff6FAF3A7e52BA697820c5e32D806A8'::bytea),
   ('crCREAM'::text,  '\x892B14321a4FCba80669aE30Bd0cd99a7ECF6aC0'::bytea, 18::numeric, '\x2ba592F78dB6436527729929AAf6c908497cB200'::bytea),
   ('crLINK'::text,   '\x697256CAA3cCaFD62BB6d3Aa1C7C5671786A5fD9'::bytea, 18::numeric, '\x514910771AF9Ca656af840dff83E8264EcF986CA'::bytea),
   ('crLEND'::text,   '\x8B86e0598616a8d4F1fdAE8b59E55FB5Bc33D0d6'::bytea, 18::numeric, '\x80fB784B7eD66730e8b1DBd9820aFD29931aab03'::bytea),
   ('crCRV'::text,   '\xc7Fd8Dcee4697ceef5a2fd4608a7BD6A94C77480'::bytea, 18::numeric, '\xD533a949740bb3306d119CC777fa900bA034cd52'::bytea),
   ('crESD'::text, '\x3c6c553a95910f9fc81c98784736bd628636d296'::bytea, 18::numeric, '\x36F3FD68E7325a35EB768F1AedaAe9EA0689d723'::bytea), 
   ( 'crRENBTC'::text, '\x17107f40d70f4470d20cb3f138a052cae8ebd4be'::bytea, 8::numeric, '\xeb4c2781e4eba804ce9a9803c67d0893436bb27d'::bytea),
   ( 'crCOVER'::text, '\x21011bc93d9e515b9511a817a1ed1d6d468f49fc'::bytea, 18::numeric, '\x4688a8b1f292fdab17e9a90c8bc379dc1dbd8713'::bytea),
   ( 'crYETH'::text, '\x01da76dea59703578040012357b81ffe62015c2d'::bytea, 18::numeric, '\xe1237aa7f535b0cc33fd973d66cbf830354d16c7'::bytea),
   ( 'crSUSHI'::text, '\x338286c0bc081891a4bda39c7667ae150bf5d206'::bytea, 18::numeric, '\x6b3595068778dd592e39a122f4f5a5cf09c90fe2'::bytea),
   ( 'crXSUSHI'::text, '\x228619cca194fbe3ebeb2f835ec1ea5080dafbb2'::bytea, 8::numeric, '\x338286c0bc081891a4bda39c7667ae150bf5d206'::bytea),
   ( 'crHBTC'::text, '\x054b7ed3f45714d3091e82aad64a1588dc4096ed'::bytea, 18::numeric, '\x0316eb71485b0ab14103307bf65a021042c6d380'::bytea),
   ( 'crFTT'::text, '\x10fdbd1e48ee2fd9336a482d746138ae19e649db'::bytea, 18::numeric, '\x50d1c9771902476076ecfc8b2a83ad6b9355a4c9'::bytea),
   ( 'crALPHA'::text, '\x1d0986fb43985c88ffa9ad959cc24e6a087c7e35'::bytea, 18::numeric, '\xa1faa113cbe53436df28ff0aee54275c13b40975'::bytea),
   ( 'crBUSD'::text, '\x1ff8cdb51219a8838b52e9cac09b71e591bc998e'::bytea, 18::numeric, '\x4fabb145d64652a948d72533023f6e7a623c7c53'::bytea),
   ( 'crSWAG'::text, '\x22b243b96495c547598d9042b6f94b01c22b2e9e'::bytea, 18::numeric, '\x87edffde3e14c7a66c9b9724747a1c5696b742e6'::bytea),
   ( 'crDPI'::text, '\x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d'::bytea, 18::numeric, '\x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b'::bytea),
   ( 'crAAVE'::text, '\x3225e3c669b39c7c8b3e204a8614bb218c5e31bc'::bytea, 18::numeric, '\x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9'::bytea),
   ( 'crMETA'::text, '\x3623387773010d9214b10c551d6e7fc375d31f58'::bytea, 18::numeric, '\xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2'::bytea),
   ( 'crYYCRV'::text, '\x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6'::bytea, 18::numeric, '\x5dbcf33d8c2e976c6b560249878e6f1491bca25c'::bytea),
   ( 'cr1INCH'::text, '\x85759961b116f1d36fd697855c57a6ae40793d9b'::bytea, 18::numeric, '\x111111111117dc0aa78b770fa6a738034120c302'::bytea),
   ( 'crBBADGER'::text, '\x8b950f43fcac4931d408f1fcda55c6cb6cbf3096'::bytea, 18::numeric, '\x19d97d8fa813ee2f51ad4b4e04ea08baf4dffc28'::bytea),
   ( 'crKP3R'::text, '\x903560b1cce601794c584f58898da8a8b789fc5d'::bytea, 18::numeric, '\x1ceb5cb57c4d4e2b2433641b95dd330a33185a44'::bytea),
   ( 'crDAI'::text, '\x92b767185fb3b04f881e3ac8e5b0662a027a1d9f'::bytea, 18::numeric, '\x6b175474e89094c44da98b954eedeac495271d0f'::bytea),
   ( 'crSNX'::text, '\xc25eae724f189ba9030b2556a1533e7c8a732e14'::bytea, 18::numeric, '\xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f'::bytea),
   ( 'crUNI-V2-DAI-ETH'::text, '\xcd22c4110c12ac41acefa0091c432ef44efaafa0'::bytea, 18::numeric, '\xa478c2975ab1ea89e8196811f51a7b7ade33eb11'::bytea),
   ( 'crUNI'::text, '\xe89a6d0509faf730bd707bf868d9a2a744a363c7'::bytea, 18::numeric, '\x1f9840a85d5af5bf1d1762f925bdaddc4201f984'::bytea),
   ( 'crSRM'::text, '\xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025'::bytea, 6::numeric, '\x476c5e26a75bd202a9683ffd34359c0cc15be0ff'::bytea),
   ( 'crWNXM'::text, '\xeff039c3c1d668f408d09dd7b63008622a77532c'::bytea, 18::numeric, '\x0d438f3b5175bebc262bf23753c1e53d03432bde'::bytea),
   ( 'crCRETH2'::text, '\xfd609a03b393f1a1cfcacedabf068cad09a924e2'::bytea, 18::numeric, '\xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd'::bytea),
   ( 'crHEGIC'::text, '\x10a3da2bb0fae4d591476fd97d6636fd172923a8'::bytea, 18::numeric, '\x584bc13c7d411c00c01a62e8019472de68768430'::bytea),
   ( 'crCEL'::text, '\x8b3FF1ed4F36C2c2be675AFb13CC3AA5d73685a5'::bytea, 4::numeric, '\xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d'::bytea),
   ( 'crHFIL'::text, '\xd5103afcd0b3fa865997ef2984c66742c51b2a8b'::bytea, 18::numeric, '\x9afb950948c2370975fb91a441f36fdc02737cd4'::bytea),
   ( 'crHUSD'::text, '\xd692ac3245bb82319a31068d6b8412796ee85d2c'::bytea, 8::numeric, '\xdf574c24545e5ffecb9a659c229253d4111d87e1'::bytea),
   ( 'crBOND'::text, '\xf55BbE0255f7f4E70f63837Ff72A577fbDDbE924'::bytea, 18::numeric, '\x0391d2021f89dc339f60fff84546ea23e337750f'::bytea),
   ( 'crAMP'::text, '\x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6'::bytea, 18::numeric, '\xff20817765cb7f73d4bde2e66e067e58d11095c2'::bytea),
   ( 'crOCEAN'::text, '\x7c3297cfb4c4bbd5f44b450c0872e0ada5203112'::bytea, 18::numeric, '\x967da4048cd07ab37855c090aaf366e4ce1b9f48'::bytea),
   ( 'crFRAX'::text, '\xb092b4601850e23903a42eacbc9d8a0eec26a4d5'::bytea, 18::numeric, '\x853d955acef822db058eb8505911ed77f175b99e'::bytea),
   ( 'crWBTC'::text, '\x197070723CE0D3810a0E47F06E935c30a480D4Fc'::bytea, 8::numeric, '\x2260fac5e5542a773aa44fbcfedf7c193bc2c599'::bytea),
    ( 'crRAI'::text, '\xf8445c529d363ce114148662387eba5e62016e20'::bytea, 18::numeric, '\xf30547ff2Df1F1CBE5C8DD758B3dd098C856e38f'::bytea),
    ( 'crPICKLE'::text, '\xc68251421edda00a10815e273fa4b1191fac651b'::bytea, 18::numeric, '\x429881672B9AE42b8EbA0E26cD9C73711b891Ca5'::bytea),
    ( 'crOGN'::text, '\x59089279987dd76fc65bf94cb40e186b96e03cb3'::bytea, 18::numeric, '\x8207c1ffc5b6804f6024322ccf34f29c3541ae26'::bytea),
    ( 'crRUNE'::text, '\x8379baa817c5c5ab929b03ee8e3c48e45018ae41'::bytea, 18::numeric, '\x3155BA85D5F96b2d030a4966AF206230e46849cb'::bytea)
   ),
days AS (
    SELECT generate_series('2019-11-12'::timestamp, date_trunc('day', NOW()), '1 day') AS day
    ),
data_4 as (
select ("repayAmount") as Borrow,("totalBorrows") as Total_Borrow, date_trunc('day',"evt_block_time") as day, "evt_block_time", allo."contract_address" as contract_address, t.underlying_token_address as underlying_contract_address
FROM (
        SELECT * FROM creamfinance."CEther_evt_RepayBorrow"
        UNION ALL
        SELECT * FROM creamfinance."CErc20Delegate_evt_RepayBorrow"
        ) allo
        JOIN "ctokens" t ON allo."contract_address" = t.contract_address
),
data_2 as (
select ("borrowAmount") as Borrow,("totalBorrows") as Total_Borrow, date_trunc('day',"evt_block_time") as day, "evt_block_time", allo."contract_address" as contract_address, t.underlying_token_address as underlying_contract_address
FROM (
        SELECT * FROM creamfinance."CEther_evt_Borrow" 
        UNION ALL
        SELECT * FROM creamfinance."CErc20Delegate_evt_Borrow"
        ) allo
        JOIN "ctokens" t ON allo."contract_address" = t.contract_address
        ),
data_1 as (
select * from (
select * from data_2
union all
select * from data_4
) allo 
order by evt_block_time desc
),    
data_3 as 
(
select data_1.contract_address, 
day, 
coalesce((Total_Borrow/10^t.decimals), 0) as Total_Borrow_By_Token, 
coalesce((Total_Borrow*p.price/10^t.decimals),0) as Total_Borrow_in_USD, 
t.symbol as token, 
"evt_block_time", 
coalesce(p.price, 0) as price_used_to_calculate,  
lead(day, 1, now()) OVER (PARTITION BY data_1.contract_address ORDER BY data_1.day) AS next_day
from data_1 
LEFT JOIN erc20."tokens" t ON data_1."underlying_contract_address" = t.contract_address
LEFT JOIN prices.usd as p on p.minute = date_trunc('minute',"evt_block_time") AND p.contract_address = t.contract_address
order by "evt_block_time" desc
), 
tokens_by_day_raw as (
select token, Total_Borrow_By_Token, (Total_Borrow_in_USD), d.day, "evt_block_time", price_used_to_calculate   
from data_3 b
INNER JOIN days d ON b.day <= d.day AND d.day < b.next_day
),
dis as (
select distinct on (1, 5) token, Total_Borrow_By_Token, price_used_to_calculate, Total_Borrow_in_USD, r.day, "evt_block_time",  ab.total_outstanding_debt from tokens_by_day_raw r
JOIN (
select day, sum(Total_Borrow_in_USD) as total_outstanding_debt from tokens_by_day_raw
group by day
) ab on ab.day = r.day
order by token, day, "evt_block_time" desc
)
-- select contract_address from "ctokens"
-- where contract_address in (select contract_address from erc20."tokens")
select d.* from dis d
where total_borrow_in_usd > 0
order by day desc

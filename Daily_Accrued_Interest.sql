--Note: code is based off the lending abstraction, refer to duneanalytics github

select date_trunc('day', interest.evt_block_time) as day, sum("interestAccumulated"/10^18) as usd_value
from (
    select evt_block_time, contract_address, "interestAccumulated"
    from creamfinance."CEther_evt_AccrueInterest"---creamfinance."CEther_evt_AccrueInterest"
    
    union all 
    
    select evt_block_time, contract_address, "interestAccumulated"
    from creamfinance."CErc20Delegate_evt_AccrueInterest"---creamfinance."CErc20Delegate_evt_AccrueInterest"

) interest
group by date_trunc('day', interest.evt_block_time)

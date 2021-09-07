SELECT date, sum(users) OVER (
                              ORDER BY date ASC ROWS BETWEEN unbounded preceding AND CURRENT ROW) AS total_users
FROM
  (SELECT date, count(USER) AS users
   FROM
     (SELECT min(date) AS date,
             account AS USER
      FROM
        (SELECT date_trunc('day', min(evt_block_time)) AS date,
                minter AS account
         FROM creamfinance."CErc20Delegate_evt_Mint"
         GROUP BY 2
         UNION SELECT date_trunc('day', min(evt_block_time)) AS date,
                      borrower AS account
         FROM creamfinance."CErc20Delegate_evt_Borrow"
         GROUP BY 2
         UNION SELECT date_trunc('day', min(evt_block_time)) AS date,
                      minter AS account
         FROM creamfinance."CEther_evt_Mint"
         GROUP BY 2
         UNION SELECT date_trunc('day', min(evt_block_time)) AS date,
                      borrower AS account
         FROM creamfinance."CEther_evt_Borrow"
         GROUP BY 2) AS a
      GROUP BY 2) AS b
   GROUP BY 1
   ORDER BY 1) AS c

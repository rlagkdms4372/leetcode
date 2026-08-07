# Write your MySQL query statement below
WITH sub_trans AS (
    SELECT DATE_FORMAT(trans_date, '%Y-%m') as month,
           id, country, state, amount, trans_date,
           CASE WHEN state = "approved" THEN 1
                WHEN state = 'declined' THEN 0 END AS state_num
    FROM Transactions
)

SELECT month,
       country,
       COUNT(*) AS trans_count,
       sum(state_num) AS approved_count,
       SUM(amount) AS trans_total_amount,
       SUM(amount*state_num) AS approved_total_amount
FROM sub_trans
GROUP BY month, country

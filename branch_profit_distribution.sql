CREATE OR REPLACE TABLE rakamin-kf-analytics-430703.kimia_farma.branch_profit_distribution AS
SELECT 
    branch_id,
    branch_name,
    SUM(nett_profit) AS total_profit
FROM 
    `rakamin-kf-analytics-430703.kimia_farma.final_aggregated_table`
GROUP BY 
    branch_id, branch_name;
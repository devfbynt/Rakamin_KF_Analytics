CREATE OR REPLACE TABLE rakamin-kf-analytics-430703.kimia_farma.province_profit AS
SELECT 
    provinsi,
    SUM(nett_profit) AS total_profit
FROM 
    `rakamin-kf-analytics-430703.kimia_farma.final_aggregated_table`
GROUP BY 
    provinsi;
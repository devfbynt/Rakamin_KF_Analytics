CREATE OR REPLACE TABLE rakamin-kf-analytics-430703.kimia_farma.yearly_revenue AS
SELECT 
    EXTRACT(YEAR FROM date) AS year,
    SUM(nett_sales) AS total_revenue
FROM 
    `rakamin-kf-analytics-430703.kimia_farma.final_aggregated_table`
GROUP BY 
    year
ORDER BY 
    year;
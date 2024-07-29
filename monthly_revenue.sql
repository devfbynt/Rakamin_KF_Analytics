CREATE OR REPLACE TABLE rakamin-kf-analytics-430703.kimia_farma.monthly_revenue AS
SELECT 
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    FORMAT_TIMESTAMP('%B', date) AS month_name, -- Nama bulan
    PARSE_DATE('%Y-%m', CONCAT(CAST(EXTRACT(YEAR FROM date) AS STRING), '-', LPAD(CAST(EXTRACT(MONTH FROM date) AS STRING), 2, '0'))) AS year_month,
    SUM(nett_sales) AS total_revenue
FROM 
    `rakamin-kf-analytics-430703.kimia_farma.final_aggregated_table`
WHERE 
    EXTRACT(YEAR FROM date) BETWEEN 2020 AND 2023
GROUP BY 
    year, month, month_name, year_month
ORDER BY 
    year, month;
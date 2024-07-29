CREATE OR REPLACE TABLE rakamin-kf-analytics-430703.kimia_farma.high_low_ratings AS
SELECT 
    branch_id,
    branch_name,
    kota,
    provinsi,
    rating_cabang,
    AVG(rating_transaksi) AS avg_rating_transaksi
FROM 
    `rakamin-kf-analytics-430703.kimia_farma.final_aggregated_table`
GROUP BY 
    branch_id, branch_name, kota, provinsi, rating_cabang
HAVING 
    rating_cabang = 5
ORDER BY 
    avg_rating_transaksi
LIMIT 5;
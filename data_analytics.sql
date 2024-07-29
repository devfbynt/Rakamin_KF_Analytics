SELECT
  MIN(date) AS earliest_date,
  MAX(date) AS latest_date,
  COUNT(*) AS total_transactions,
  COUNT(DISTINCT customer_name) AS total_customer,
  AVG(actual_price) AS average_actual_price,
  AVG(persentase_gross_laba) AS average_persentase_gross_profit,
  AVG(discount_percentage) AS average_discount_percentage,
  AVG(rating_transaksi) AS average_rating_transaksi,
  AVG(rating_cabang) AS average_rating_cabang,
  SUM(nett_sales) AS total_nett_sales,
  SUM(nett_profit) AS total_nett_profit,
  branch_name
FROM kimia_farma.final_aggregated_table
GROUP BY branch_name
ORDER BY total_nett_sales DESC
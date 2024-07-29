# Kimia Farma Analytics Project

## Deskripsi Proyek
Proyek ini bertujuan untuk mengevaluasi kinerja bisnis Kimia Farma dari tahun 2020 hingga 2023. Sebagai Big Data Analytics Intern, Anda akan mengimpor dataset, membuat tabel analisis, dan menggunakan data tersebut untuk membuat dashboard di Google Looker Studio.

## Struktur Direktori
kimia_farma_analytics/
├── README.md
├── data/
│   ├── kf_final_transaction.csv
│   ├── kf_inventory.csv
│   ├── kf_kantor_cabang.csv
│   ├── kf_product.csv
├── sql/
│   ├── create_final_aggregated_table.sql
│   ├── create_province_profit_table.sql
├── looker_studio/
│   ├── dashboard_design.pdf
│   ├── screenshots/
│   │   ├── overview.png
│   │   ├── monthly_revenue_comparison.png
│   │   ├── province_profit_map.png

## Langkah-langkah Implementasi
1. Mengimpor Dataset ke BigQuery
   a. Mengunggah CSV ke BigQuery
      <li> kf_final_transaction.csv </li>
      <li> kf_inventory.csv </li>
      <li> kf_kantor_cabang.csv </li>
      <li> kf_product.csv </li>
2. Membuat Tabel Analisis
3. Membuat Dashboard di Google Looker Studio
   a. Hubungkan BigQuery ke Looker Studio
       Buat koneksi data baru di Google Looker Studio dan pilih dataset **kimia_farma** dari proyek **rakamin-kf-analytics-430703**.
   b. Desain Dashboard
       Tambahkan komponen-komponen berikut ke dashboard:
      <li> Judul Dashboard </li>
      <li> Summary Dashboard (total transaksi, total penjualan bersih, total keuntungan, dll.) </li>
      <li> Filter Control (filter berdasarkan tanggal, provinsi, kota, cabang) </li>
      <li> Snapshot Data (bulan, total penjualan) </li>
      <li> Perbandingan Pendapatan Tahun ke Tahun (dengan grafik garis) </li>
      <li> Top 10 Total Transaksi Cabang per Provinsi (dengan grafik bar) </li>
      <li> Top 10 Penjualan Bersih Cabang per Provinsi (dengan grafik bar) </li>
      <li> Top 5 Cabang dengan Rating Tertinggi namun Rating Transaksi Terendah (dengan grafik bar) </li>
      <li> Peta Geo Indonesia untuk Total Profit per Provinsi (dengan peta geografis) </li>
      <li> Analisis Eksploratif Lainnya </li>
    c. Mengatur Filter dan Kontrol
    d. Menyimpan dan Membagikan Dashboard



-- Menggunakan Group By
-- Untuk menggabungkan aggregate dengan kolom biasa, harus gunakan Group By

-- Menghitung total products berdasarkan id per categories
SELECT COUNT(id) AS 'Total Product', categories FROM products GROUP BY categories;

-- Menghitung nilai rata-rata berdasarkan price per categories
SELECT AVG(price) AS 'Rata-Rata', categories FROM products GROUP BY categories;

-- Menghitung nilai terbesar berdasarkan price per categories
SELECT MAX(price) AS 'Harga Termahal', categories FROM products GROUP BY categories;

-- Menghitung nilai terkecil berdasarkan price per categories
SELECT MIN(price) AS 'Harga Termurah', categories FROM products GROUP BY categories;

-- Menghitung jumlah nilai berdasarkan quantity per categories
SELECT SUM(quantity) AS 'Total Seluruh Stok', categories FROM products GROUP BY categories;
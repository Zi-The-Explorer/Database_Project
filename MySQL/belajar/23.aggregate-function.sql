--  Menggunakan Aggregate Function

-- Menghitung total products berdasarkan id
SELECT COUNT(id) AS 'Total Product' FROM products;

-- Menghitung nilai rata-rata berdasarkan price
SELECT AVG(price) AS 'Rata-Rata' FROM products;

-- Menghitung nilai terbesar berdasarkan price
SELECT MAX(price) AS 'Harga Termahal' FROM products;

-- Menghitung nilai terkecil berdasarkan price
SELECT MIN(price) AS 'Harga Termurah' FROM products;

-- Menghitung jumlah nilai berdasarkan quantity
SELECT SUM(quantity) AS 'Total Seluruh Stok' FROM products;

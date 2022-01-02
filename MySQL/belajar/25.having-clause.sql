
-- Menggunakan HAVING clause

-- Menghitung total product berdasarkan kategori yang nilainya lebih dari 5
-- Untuk mengecek hasil aggregate, harus menggunakan having
SELECT COUNT(id) AS Total, categories 
FROM products
GROUP BY categories
HAVING Total > 5;
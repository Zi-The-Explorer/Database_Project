
-- Mencari menggunakan between operator

-- Mencari data poducts berdasarkan price dengan value antara 10000 sampai 20000 
SELECT * FROM products
WHERE price BETWEEN 10000 AND 20000;

-- Mencari data poducts berdasarkan price dengan value Tidak antara dari 10000 sampai 20000 
SELECT * FROM products
WHERE price BETWEEN 10000 AND 20000;
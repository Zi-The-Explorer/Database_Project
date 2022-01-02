
INSERT INTO products (id, name, categories, price, quantity)
VALUES ('P0014', 'Lemari', 'Lain-Lain', 1000000, 50);


-- Mencari menggunakan IN Operator

-- Mengeluarkan data dengan category makanan atau minuman
SELECT * FROM products
WHERE categories IN ('Makanan', 'Minuman'); 

-- Mengeluarkan data dengan category yang bukan makanan atau minuman
SELECT * FROM products
WHERE categories NOT IN ('Makanan', 'Minuman'); 
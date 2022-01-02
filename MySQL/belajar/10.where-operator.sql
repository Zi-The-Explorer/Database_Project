
-- Menambahkan operator perbandingan pada where clause
SELECT * FROM products WHERE quantity >= 100;
SELECT * FROM products WHERE quantity != 100;
SELECT * FROM products WHERE price = 50000;
SELECT * FROM products WHERE price < 50000;
SELECT * FROM products WHERE categories != 'Makanan';
SELECT * FROM products WHERE categories != 'Minuman';

-- Menambahkan AND & OR Operator
SELECT * FROM products
WHERE categories = 'Makanan' AND price < 20000;

SELECT * FROM products
WHERE price < 20000 OR quantity < 20;

-- Prioritas dengan tanda kurung()
SELECT * FROM products
WHERE (categories = 'Makanan' OR quantity > 500) AND price < 100000





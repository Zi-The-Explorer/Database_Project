
UPDATE products
SET description = null
WHERE id = 'P0012';


-- Mencari menggunakan NULL Operator

SELECT * FROM products
WHERE description IS NULL;

SELECT * FROM products
WHERE description IS NOT NULL;
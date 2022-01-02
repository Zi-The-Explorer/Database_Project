USE belajar_mysql;

-- query where clause / pencarian data
SELECT * FROM products

-- mencari products berdasarkan quantity dengan nilai value nya
WHERE quantity = 75;

-- Mencari products berdasarkan price dengan nilai value nya
SELECT * FROM products WHERE price = 15000;

-- Mencari products berdasarkan id dengan nilai value nya
SELECT * FROM products WHERE id = 'P0001';

-- Mencari products berdasarkan name products dengan nilai value nya
SELECT * FROM products WHERE name = 'Mie ayam ceker';
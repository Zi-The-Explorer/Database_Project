USE belajar_mysql;

DESCRIBE products;

-- Add Column Categories dengna type ENUM setelah kolom name 
ALTER TABLE products
ADD COLUMN categories ENUM('Makanan', 'Minuman', 'Lain-Lain')
AFTER name;

-- Update product dengan menambahkan category products nya
-- Mengubah Kolom nya
SELECT * FROM products WHERE id = 'P0001';
UPDATE products
SET categories = 'Makanan'
WHERE id = 'P0001';

-- Mengubah beberapa kolom
UPDATE products 
SET categories = 'Makanan',
	description = 'Mie Ayam bakso ini enak tau'
WHERE id = 'P0002';

UPDATE products
SET description = 'Mie ayam dengan rasa yang asli'
WHERE id = 'P0001';

-- Update kolom price pada tabel products dengan menambahkan nilai nya / value nya 
UPDATE products
SET price = price + 15000
WHERE id = 'P0007';

SELECT * FROM products;



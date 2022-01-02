-- percobaan tanpa membuat table
SELECT 10 * 10 AS Hasil;

-- percobaan dari table
-- menggunakan arithmatic operator DIV Setelah kolom price
-- artinya data pada kolom price dibagi 1000 dan di aliaskan 
SELECT id, name, price, price DIV 1000 AS 'Price in K' 
FROM products;

-- Menggunakan mathematical function
SELECT id, COS(price), SIN(price), TAN(price) FROM products;

SELECT id, name,  price
FROM products
WHERE price DIV 1000 > 15;

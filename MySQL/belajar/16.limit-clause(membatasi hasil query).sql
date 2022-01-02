
-- menambahkan limit untuk membatasi jumlah data yang di ambil
SELECT * FROM products
WHERE price > 0 
ORDER BY price
LIMIT 2;

SELECT * FROM products ORDER BY id LIMIT 5;
SELECT * FROM products ORDER BY id LIMIT 3;

-- limit 5 dengan skip data pertama 5 
-- maka data limit 5 di tampilkan setelah data awal di skip 5 dan menampilkan data limit 5 dimulai dari data ke 6
SELECT * FROM products ORDER BY id LIMIT 0, 5; -- page 1
SELECT * FROM products ORDER BY id LIMIT 5, 5; -- page 2
SELECT * FROM products ORDER BY id LIMIT 10, 5; -- page 3


-- Biasa nya digunakan untuk membuat paging
-- Menggunakan string function

-- menyertakan data pada kolom name di function LOWER() / Karakter kecil 
SELECT id, LOWER(name) AS 'Lower Name'
FROM products; 

-- menyertakan data pada kolom name di function UPPER() / Karakter Besar
SELECT id, UPPER(name) AS 'Upper Name'
FROM products; 

-- menyertakan data pada kolom name di function LENGTH() / Menghitung jumlah karakter
SELECT id, LENGTH(name) AS 'Length Name'
FROM products; 

-- Menggunakan fungsi-fungsi string
SELECT id, LOWER(name) AS 'Lower Name',
			UPPER(name) AS 'Upper Name',
            LENGTH(name) AS 'Length Name'
FROM products;


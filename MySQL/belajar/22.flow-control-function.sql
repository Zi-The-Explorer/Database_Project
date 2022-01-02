
-- Ini fungsi seperti if else

-- Menggunakan control flow CASE
SELECT id, categories,
	CASE categories
		WHEN 'Makanan' THEN 'Enak' 
		WHEN 'Minuman' THEN 'Segar'
        ELSE 'Apa Itu?'
        END AS 'Rasanya'
FROM products;

-- Menggunakan Control Flow If
-- ada tiga parameter
SELECT id, price, 
		IF (price <= 15000, 'Murah', 
			IF(price <= 20000, 'Mahal', 'Mahal Banget')
        ) AS Keterangan 
FROM products;

-- Menggunakan Control Flow IFNULL
SELECT id, name, 
	IFNULL(description, 'Tidak ada description') AS description
FROM products;
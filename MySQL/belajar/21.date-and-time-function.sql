
-- Menambahkan kolom timestamp

-- Menggunkan fungsi-fungsi timestamp
SELECT id, created_at,
	EXTRACT(YEAR FROM created_at) AS 'Year',
	EXTRACT(MONTH FROM created_at) AS 'Month',
	EXTRACT(DAY FROM created_at) AS 'Day',
	EXTRACT(HOUR FROM created_at) AS 'Hour',
	EXTRACT(MINUTE FROM created_at) AS 'Minute',
	EXTRACT(SECOND FROM created_at) AS 'Second'
FROM products;

-- Lebih simple
SELECT id, created_at, 
	YEAR(created_at) AS 'Year', 
	MONTH(created_at) AS 'Month' 
FROM products; 
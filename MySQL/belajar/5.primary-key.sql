USE belajar_mysql;

-- Menambah primary key pada satu kolom, untuk memberikan kunci identitas
CREATE TABLE products 
(
	id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    
    -- UNSIGNED(nilai tidak boleh negatif)
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- query untuk menambah primary key pada kolom yang inginn diberikan
ALTER TABLE products
ADD PRIMARY KEY(id);

-- Jika kolom id sudah diberikan primary key, maka kolom id tidak dapat menampung data record yang duplikat
-- Begitupun pada kolom kolom yang lain 
-- Contoh :
INSERT INTO products(id, name, price, quantity) 
VALUES ('P0001', 'Mie ayam original', 15000, 100); -- error duplicate id
 
DESCRIBE products;
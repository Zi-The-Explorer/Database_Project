USE belajar_mysql;


-- Menggunakan constraint

-- Membuat table dengan unique constraint
CREATE TABLE customers
(
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    PRIMARY KEY(id),
    UNIQUE KEY email_unique (email)
);

DESCRIBE customers;

-- Menghapus dan Menambahkan Unique Key
ALTER TABLE customers 
	DROP CONSTRAINT email_unique;
    
ALTER TABLE customers 
	ADD CONSTRAINT email_unique UNIQUE(email);
    
-- Karna kolom email sudah mendapat Unique key, maka data pada kolom email tidak dapat di duplikat
INSERT INTO customers(email, first_name, last_name) VALUES('akhmadfauzi@gmail.com', 'Akhmad', 'Fauzi');
INSERT INTO customers(email, first_name, last_name) VALUES('aleydakanaya@gmail.com', 'Aleyda', 'Kanaya');

SELECT * FROM customers;
    
    
-- Menambahkan check constraint pada tabel products 
-- berdasarkan price nya dengan nilai lebih atau samadengan dari 1000
-- Jika kurang dari Check(), maka data ditolak
ALTER TABLE products
	ADD CONSTRAINT price_check CHECK( price >= 1000 );
    
INSERT INTO products(id, name, categories, description, price, quantity) 
VALUES('P0015', 'Permen', 'Lain-Lain', 'Jangan Kebanyakan, Ini manis', 1000, 100);

DESCRIBE products;
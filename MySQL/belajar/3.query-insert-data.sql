

CREATE DATABASE belajar_mysql;
USE belajar_mysql;

-- query buat table and kolom
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

-- query untuk menampilkan seluruh table
SHOW TABLES;

-- query untuk melihat structur pada tabel
DESCRIBE products;

-- query insert data (memasukan data)
INSERT INTO products(id, name, price, quantity) 
VALUES ('P0001', 'Mie ayam original', 15000, 100);

INSERT INTO products(id, name, description, price, quantity) 
VALUES ('P0002', 'Mie ayam bakso tahu', 'Mie ayam original + Bakso tahu', 20000, 100);

-- Memasukan data sekaligus lebih dari satu
INSERT INTO products(id, name, price, quantity)
VALUES ('P0003', 'Mie ayam ceker', 20000, 100 ),
	   ('P0004', 'Mie ayam spesial', 25000, 100 ),
	   ('P0005', 'Mie ayam yamin', 15000, 100 );
       
INSERT INTO products(id, name, price, quantity)
VALUES ('P0006', 'Bakso urat', 20000, 50),
		('P0007', 'Bakso bom', 35000, 20),
		('P0008', 'Bakso biasa', 10000, 100),
		('P0009', 'Bakso spesial', 25000, 100),
		('P0010', 'Indomie biasa', 3500, 200),
		('P0011', 'Indomie + Telor', 7500, 100),
		('P0012', 'Es teh', 2500, 100),
		('P0013', 'Es kelapa', 5000, 75),
		('P0014', 'Es jeruk', 5000, 50);
        
        
-- query melihat seluruh data pada table 
SELECT * FROM products;
















-- Menambahkan index 

CREATE TABLE sellers (
	id INT NOT NULL AUTO_INCREMENT,
    name1 VARCHAR(100) NOT NULL,
    name2 VARCHAR(100),
    name3 VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    
    -- Primary key otomatis memiliki index
    PRIMARY KEY(id),
    
    -- Unique key juga otomatis memiliki index
    UNIQUE KEY email_unique (email),
    
    -- Jika ingin menambahkan index tinggal tambahkan query index
    INDEX name1_index (name1),
    INDEX name2_index (name2),
    INDEX name3_index (name3),
    INDEX name1_name2_name3_index (name1, name2, name3)
)ENGINE = InnoDB;

DESCRIBE sellers;

SHOW CREATE TABLE sellers;

SELECT * FROM sellers WHERE name1 = 'X';

SELECT * FROM sellers WHERE name1 = 'X' AND name2 = 'X';

SELECT * FROM sellers WHERE name1 = 'X' AND name2 = 'X' AND name3 = 'X';













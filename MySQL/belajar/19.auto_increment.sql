-- Membaut table dengan auto increment 
CREATE TABLE admin (
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (100),
    last_name VARCHAR (100),
    PRIMARY KEY (id)
)ENGINE InnoDB;

DESCRIBE admin;

-- Insert data admin yang kolom id nya menggunakan auto_increment
-- Tidak perlu menyertakan id pada parameter table, karna sudah auto_increment 
INSERT INTO admin(first_name, last_name) 
VALUES('Akhmad', 'Fauzi'), 
		('Adinda', 'Fatiharki'),
		('Irna Wati', 'Julianingsih'),
		('Aleyda', 'Kanaya'),
		('Muhammad', 'Zein');
        
INSERT INTO admin (first_name, last_name)
VALUES ('Ade', 'Kurniawan');
        
DELETE FROM admin 
WHERE id = 6;

SELECT * FROM admin ORDER BY id; 

-- Mendapatkan id terakhir dari auto_increment
SELECT LAST_INSERT_ID();
CREATE DATABASE latihan;

SHOW DATABASES;

USE latihan;

CREATE TABLE users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE = InnoDB;

INSERT INTO users(nama, email) VALUES ('Akhmad Fauzi', 'akhmadfauzi@gmail.com');
INSERT INTO users(nama, email) VALUES ('Adinda Fatiharki', 'adinda@gmail.com');
INSERT INTO users(nama, email) VALUES ('Irnawati Julianingsih', 'irna@gmail.com');
INSERT INTO users(nama, email) VALUES ('Aleyda Kanaya', 'naya@gmail.com');
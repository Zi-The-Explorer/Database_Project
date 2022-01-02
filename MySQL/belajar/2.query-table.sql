-- Query untuk membuat table
 CREATE TABLE barang (
 -- Mendefinisikan Kolom
	kode INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
 ) ENGINE = InnoDB;
 
 -- Query untuk melihat struktur table
DESCRIBE barang; 
DESC barang;
SHOW CREATE TABLE barang;

-- Mengubah table yang sudah terlanjur dibuat
ALTER TABLE barang
	-- Menambah kolom deskripsi dengan tipe datanya text
	ADD COLUMN deskripsi TEXT;
    
ALTER TABLE barang
	ADD COLUMN salah TEXT;
    
ALTER TABLE barang 
	-- Menghapus kolom yang sudah terlanjur dibuat
    DROP COLUMN salah;
    
ALTER TABLE barang
	-- Memodifikasi kolom nama 
    -- Dari Varchar(100) menjadi Varchar(255)
    -- Memposisikan kolom nama berada setelah kolom deskripsi 
    MODIFY nama VARCHAR(255) AFTER deskripsi;

ALTER TABLE barang
	-- Memposisikan kolom nama berada di posisi pertama 
	MODIFY nama VARCHAR(255) FIRST;
    
ALTER TABLE barang
	MODIFY nama VARCHAR(255) AFTER kode;

-- Null value 
ALTER TABLE barang
	-- Memberikan null value pada kolom kode
    -- Yang sebelumnya terlanjur dibuat dan belum diberikan null value
    -- kode tidak boleh kosong 
	MODIFY kode INT NOT NULL ;
    
ALTER TABLE barang
	MODIFY nama VARCHAR(255) NOT NULL;

DESC barang;

-- Default value
ALTER TABLE barang
	-- Menentukan kolom harga tidak boleh kosong jika tidak diisi default value nya 0 
	MODIFY harga INT NOT NULL DEFAULT 0,
	-- Menentukan kolom jumlah tidak boleh kosong jika tidak diisi  default value nya 0 
    MODIFY jumlah INT NOT NULL DEFAULT 0;
    
ALTER TABLE barang 
	-- JIka waktu tidak diisi, maka default nya adalah waktu saat ini (CURRENT_TIMESTAMP) 
	ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
    
 -- Query memasukan data
 -- Memasukan data pada tiap tiap kolom pada table barang
 INSERT INTO barang (kode, nama) VALUES (1, 'apel');
 
 --  Query menampilkan seluruh data pada table barang
 SELECT * FROM barang;
 
 -- Query untuk buat ulang table, dan otomatis menghapus seluruh datanya
 TRUNCATE barang;
 
 -- Query menghapus table
 DROP TABLE barang;
 
 -- Query menampilkan seluruh table
 SHOW TABLES;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    





















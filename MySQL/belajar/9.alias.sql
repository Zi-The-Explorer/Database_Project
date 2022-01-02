
-- query menambahkan alias (as) Untuk kolom
SELECT  id 			AS 'Kode', 
		name 		AS 'Nama', 
        categories 	AS 'Kategori', 
        description AS 'Deskripsi', 
        price 		AS 'Harga',
        quantity 	AS 'Stok'
FROM products;

-- query menambahkan alias (as) Untuk table

SELECT  prod.id 			AS 'Kode', 
		prod.name 			AS 'Nama', 
        prod.categories 	AS 'Kategori', 
        prod.description 	AS 'Deskripsi', 
        prod.price 			AS 'Harga',
        prod.quantity 		AS 'Stok'
FROM products AS prod;
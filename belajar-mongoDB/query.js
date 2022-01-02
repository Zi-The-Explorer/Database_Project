// Select * from customers where _id = 'fauzi'
db.customers.find({
    _id: "fauzi"
});

// select * from customers where name = 'Akhmad Fauzi'
db.customers.find({
    name: "Akhmad Fauzi"
});

// select * from products where price = 2000
db.products.find({
    price: 2000
}); 

// select * from orders where items.product_id = 1
db.orders.find({
    "items.product_id": 1
});
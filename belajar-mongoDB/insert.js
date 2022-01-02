

// Insert Document Customers
db.customers.insertOne({
    _id: "fauzi",
    name: "Akhmad Fauzi"
});


// Insert document products
db.products.insertMany([
    {
        _id: 1,
        name: "Indomie Ayam Bawang",
        price: new NumberLong(2000)
    },
    {
        _id: 2,
        name: "Mie Sedap",
        price: new NumberLong(2000)
    },
]);

// Insert Document Orders
db.orders.insertOne({
    _id: new ObjectId(),
    total: new NumberLong(8000),
    items: [
        {
            products_id: 1,
            price: new NumberLong(2000),
            quantity: new NumberInt(2)
        },
        {
            products_id: 2,
            price: new NumberLong(2000),
            quantity: new NumberInt(2)
        }
    ]

});
// Select * from customers where _id = 'fauzi'
db.customers.find({
    _id: {
        $eq: "fauzi"
    }
});

// select * from products where price > 1000
db.products.find({
    price: {
        $gt: 1000
    }
});

// insert products documents
db.products.insertMany([
    {
        _id: 3,
        name: "Pop Mie Rasa Bakso", 
        price: new NumberLong(2500),
        category: "food"
    },
    {
        _id: 4,
        name: "Samsung Galaxi S9+", 
        price: new NumberLong(10000000),
        category: "handphone"
    },
    {
        _id: 5,
        name: "Acer Predator XXI",
        price: new NumberLong(25000000),
        category: "laptop"
    }
]);

// select * from products where category in ('handphone', 'laptop') and price > 5000000
db.products.find({
    category: {
        $in: ["handphone", "laptop"]
    }, 
    price: {
        $gt: 5000000
    }
});
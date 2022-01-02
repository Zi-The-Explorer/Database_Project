// select * from products where price > 1000000
db.products.find({
    $expr: {
        $gt: ["$price", 100000]
    }
});

// select * from customers where toUpper (_id)  = 'FAUZI'
db.customers.find({
    $expr: {
        $eq: [
            { $toUpper: "$_id" },
            "FAUZI"
        ]
    }
});

// select * from products where name is not null and category is
db.products.find({
    $jsonSchema: {
        required: ["name", "category"]
    }
});

// select * from products where name is not null and type(name) == 
db.products.find({
    $jsonSchema: {
        required: ["name"], 
        properties: {
            name: {
                bsonType: "string"
            },
            price: {
                bsonType: "long"
            }
        }
    }
});

// select * from products where price % 5 = 0
db.products.find({
    price: {
        $mod: [5, 0]
    }
});

// select * from products where name like %mie%
db.products.find({
    name: {
        $regex: /mie/,
        $options: "i"
    }
});

// select * from products where name like %Mie%
db.products.find({
    name: {
        $regex: /^Mie/
    }
});

// Create text index on products
db.products.createIndex({
    name: "text"
});

// select * from products where (nama like "%mie%" or name like "%%")
db.products.find({
    $text: {
        $search: "mie sedap"
    }
});

// select * from products where name like "%mie sedap%"
db.products.find({
    $text: {
        $search: '"mie sedap"'
    }
});

// select * from customers where _id = "fauzi"
db.customers.find({
    $where: function(){
        return this.name == "Akhmad Fauzi"
        // return this._id == "fauzi"
    }
});

























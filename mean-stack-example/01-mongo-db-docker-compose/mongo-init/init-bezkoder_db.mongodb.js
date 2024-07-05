//conn = new Mongo();
//db = conn.getDB("bezkoder_db");
use('admin');
db.createUser(
  {
    user: "mongo",
    pwd: "mongo",
    roles: [ 
      { 
        role: "readWrite", db: "admin" 
      },  
      { 
        role: "readWrite", db: "test" 
      },  
      { 
        role: "readWrite", db: "bezkoder_db" 
      },
      { 
        role: "readWrite", db: "MyDatabaseName" 
      },
      { 
        role: "readWrite", db: "mongodbVSCodePlaygroundDB" 
      }
    ]
  }
)
use('test');
db.createUser(
  {
    user: "mongo",
    pwd: "mongo",
    roles: [ 
      { 
        role: "readWrite", db: "test" 
      }
    ]
  }
)
use('bezkoder_db');
db.createUser(
  {
    user: "mongo",
    pwd: "mongo",
    roles: [ 
      { 
        role: "readWrite", db: "bezkoder_db" 
      }
    ]
  }
)

db.createCollection('tutorials');
db.tutorials.insertOne({
    title: "Js Tut#",
    description: "Description for Tut#",
    published: true,
    createdAt: Date(),
    updatedAt: Date()
  })
db.tutorials.find()
db.myCollectionName.createIndex({ "address.zip": 1 }, { unique: false });
db.myCollectionName.insert({ "address": { "city": "Paris", "zip": "123" }, "name": "Mike", "phone": "1234" });
db.myCollectionName.insert({ "address": { "city": "Marsel", "zip": "321" }, "name": "Helga", "phone": "4321" });


docker-compose -f docker-compose.yml up -d
mongosh --eval "printjson(db.serverStatus())"
mongosh  --eval "db.showCollections"  "mongodb://mongo:mongo@0.0.0.0:27017/bezkoder_db"

mongosh -u "mongo" -p "mongo" --host  "localhost" --port 27017 --authenticationDatabase "bezkoder_db" --eval "db.listCollections"

mongosh -u "mongo" -p "mongo" --eval "db.tutorials.find()" bezkoder_db

mongosh -u "mongo" -p "mongo" --host localhost --port 27017 --eval "db.tutorials.find()" bezkoder_db

mongosh  -u "mongo" -p "mongo" --host localhost --port 27017  --eval "db.getCollectionNames()" bezkoder_db
mongosh "mongodb://mongo:mongo@0.0.0.0:27017/bezkoder_db"
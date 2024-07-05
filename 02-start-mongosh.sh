cd mean-stack-example/01-mongo-db-docker-compose/
sh 02-mongodb-start.sh
clear
echo "mongodb start successfully"
echo "connecting mongodb bezkoder_db using mongoshell"
mongosh "mongodb://mongo:mongo@0.0.0.0:27017/bezkoder_db"
#mongosh "mongodb://mongo:mongo@localhost:27017"
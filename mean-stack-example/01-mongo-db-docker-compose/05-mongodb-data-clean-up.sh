sudo rm -r -f mongo-db/data
sudo rm -r -f mongo-db
docker stop $(docker ps --filter status=running -q)
docker rm $(docker ps --filter status=exited -q)
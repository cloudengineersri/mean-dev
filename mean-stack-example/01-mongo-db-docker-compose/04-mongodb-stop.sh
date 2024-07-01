#docker-compose -f docker-compose.yml down
# To delete all data run:
# docker compose down -v
# docker-compose -f docker-compose.yml down -v
docker compose -f docker-compose.yml down -v --remove-orphans
sudo rm -r -f mongo-db/data
sudo rm -r -f mongo-db

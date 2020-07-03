cd /home/ubuntu/hr-workspaces/server
docker-compose down
docker-compose up -d

docker exec php php artisan db:create
docker exec php php artisan db:wipe
docker exec php php artisan migrate --seed
docker exec php php artisan es:delete
docker exec php php artisan es:create
docker exec php php artisan es:migrate

docker exec php service supervisor start

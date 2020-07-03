# shellcheck disable=SC2164
cd /home/ubuntu/hr-workspaces/server
docker-compose down
docker-compose up -d --build

docker exec php php artisan db:wipe
docker exec php php artisan migrate --seed
docker exec php php artisan es:delete
docker exec php php artisan es:create
docker exec php php artisan es:migrate

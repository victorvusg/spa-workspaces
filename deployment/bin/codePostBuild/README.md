cd /home/ubuntu/hr-workspaces/server/
docker-compose down

sudo rm -rf /home/ubuntu/hr-workspaces/workspaces/hr-laravel
cd /home/ubuntu/hr-workspaces/release/
mkdir hr-laravel
tar -xzvf laravel-build.tar.gz -C hr-laravel
mv hr-laravel/ /home/ubuntu/hr-workspaces/workspaces/
cd /home/ubuntu/hr-workspaces/workspaces/hr-laravel/
composer dump-autoload

sudo chmod -R 777 /home/ubuntu/hr-workspaces/workspaces/hr-laravel/storage
sudo chmod -R 777 /home/ubuntu/hr-workspaces/workspaces/hr-laravel/framework
sudo chmod -R 775 /home/ubuntu/hr-workspaces/workspaces/hr-laravel/bootstrap/cache

cd /home/ubuntu/hr-workspaces/server/
docker-compose up -d
sleep 10

docker exec php php artisan db:wipe
docker exec php php artisan migrate --seed
docker exec php php artisan es:create
docker exec php php artisan es:migrate

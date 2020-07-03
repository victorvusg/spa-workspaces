php artisan cache:clear
php artisan view:clear
chmod -R 775 /home/ubuntu/hr-workspaces/workspaces/hr-laravel/storage
chmod -R 775 /home/ubuntu/hr-workspaces/workspaces/hr-laravel/bootstrap/cache

php artisan db:wipe
php artisan migrate --seed
php artisan es:delete
php artisan es:create
php artisan es:migrate

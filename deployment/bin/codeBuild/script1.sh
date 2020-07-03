rm -rf *.gz
pwd
composer install --ignore-platform-reqs
php artisan key:generate
./vendor/bin/phpunit
truncate storage/logs/laravel.log --size 0

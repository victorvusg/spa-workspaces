sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart


sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version


# Install PHP7.2 Composer
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php7.2-fpm php7.2-zip php7.2-xml
sudo apt-get install -y php7.2-mysql
sudo apt install -y composer

sudo apt install -y ant
sudo apt install -y build-essential
sudo apt install -y openssl
sudo apt install -y php-pear
sudo apt install -y php7.2-cli
sudo apt install -y php7.2-curl
sudo apt install -y subversion

# Init PHP docker
docker exec php php artisan cache:clear
docker exec php php artisan view:clear
docker exec php chmod -R 777 /var/www/html/storage
docker exec php chmod -R 775 /var/www/html/bootstrap/cache

docker exec php php artisan db:wipe
docker exec php php artisan migrate --seed
docker exec php php artisan es:delete
docker exec php php artisan es:create
docker exec php php artisan es:migrate




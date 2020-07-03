# Install Java 8
sudo apt update
sudo apt install -y openjdk-8-jdk
java -version

# Install PHP7.2 Composer
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php7.2-fpm php7.2-zip php7.2-xml
sudo apt-get install php7.2-mysql
sudo apt install -y composer

sudo apt install -y ant
sudo apt install -y build-essential
sudo apt install -y openssl
sudo apt install -y php-pear
sudo apt install -y php7.2-cli
sudo apt install -y php7.2-curl
sudo apt install -y subversion

# Install Teamcity
wget https://download.jetbrains.com/teamcity/TeamCity-2019.2.3.tar.gz
tar -xzf TeamCity-2019.2.3.tar.gz
./TeamCity/bin/runAll.sh start


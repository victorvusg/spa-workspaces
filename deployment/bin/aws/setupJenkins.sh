# Install Java 8
sudo apt update
sudo apt install -y openjdk-8-jdk
java -version

# Install PHP7.2 Composer
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php7.2-fpm php7.2-zip
sudo apt install -y composer

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt update --fix-missing
sudo apt-get install -y jenkins


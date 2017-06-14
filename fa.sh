if [ `getconf LONG_BIT` -ne "32" ]; 
then
      installpack="apache2 php5 mysql-server  php5-dev php5-mysql php-pear wget unzip phpmyadmin mysql-client mysql-workbench"
else
     installpack="apache2 php5 mysql-server  php5-dev php5-mysql php-pear wget unzip phpmyadmin mysql-client mysql-workbench"
fi 
#!установщик сделал ru-skript.ru 
LOG_PIPE=log.pipe
rm -f LOG_PIPE
mkfifo ${LOG_PIPE}
LOG_FILE=log.file
rm -f LOG_FILE
wget  http://ru-skript.ru/fast/up2.txt -O up2.txt
		 
tee < ${LOG_PIPE} ${LOG_FILE} &

exec  > ${LOG_PIPE}
exec  2> ${LOG_PIPE}


Infon() {
	printf "\033[1;32m$@\033[0m"
}
Info()
{
	Infon "$@\n"
}
Error()
{
	printf "\033[1;31m$@\033[0m\n"
}
Error_n()
{
	Error "- - - $@"
}
Error_s()
{
	Error "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_s()
{
	Info "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_n()
{
	Info "- - - $@"
}
log_t()
{
	log_s
	Info "- - - $@"
	log_s
}
		 
install_mongo()
{
	upd
	clear
	Info
	log_t "Список скриптов mongo"
	Info "- 1  -  Установить Skininside"
    Info "- 2  -  Установить Csgopoint"
	Info "- 3  -  Установить LiteRulet"
	Info "- 4  -  Установить CSGOSTAR"
	Info "- 5  -  Установить PoleCS"
	Info "- 6  -  Установить LETS"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
		1) 
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/skininside.zip
			unzip skininside.zip -d /var/www/
		rm skininside.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
2)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/csgoshort.zip
			unzip csgoshort.zip -d /var/www/
		rm csgoshort.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
3)
				apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/literulet.zip
			unzip literulet.zip -d /var/www/
		rm literulet.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
4)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/csstar.zip
			unzip csstar.zip -d /var/www/
			wget http://ru-skript.ru/fast/botstar.zip
			unzip botstar.zip -d /botstar/
			wget http://ru-skript.ru/fast/shopstar.zip
			unzip shopstar.zip -d /shopstar/
		rm csstar.zip
		rm botstar.zip
		rm shopstar.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
5)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/pole.zip
			unzip pole.zip -d /var/www/
		rm pole.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
6) 
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install -y sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/fast/lets.zip
			unzip lets.zip -d /var/www/
		rm lets.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/fast/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 


		0) menu;;
	esac
	
	}
install_lava()
{
	upd
	clear
	Info
	log_t "Список скриптов laravel"
	Info "- 1  -  Установить Cshot"
	Info "- 2  -  Установить Puwok v5"
	Info "- 3  -  Установить csjungles"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in	
	1) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/fast/csgohotdb.zip
			unzip -o csgohotdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/csgo.sql
rm csgohotdb.zip
rm csgo.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/fast/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/fast/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/fast/csgohot.zip
			unzip -o csgohot.zip -d  /var/www/html/
			rm csgohot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
2) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/fast/puwdb.zip
			unzip -o puwdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/puw.sql
rm puwdb.zip
rm puw.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/fast/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/fast/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/fast/puw.zip
			unzip -o puw.zip -d  /var/www/html/
			wget http://ru-skript.ru/fast/puwbot.zip
			unzip -o puwbot.zip -d  /rubot/
			wget http://ru-skript.ru/fast/fastpuwbot.zip
			unzip -o fastpuwbot.zip -d  /fastrubot/
			rm puw.zip
			rm puwbot.zip
			rm fastpuwbot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
3) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/fast/jung.zip
			unzip -o jung.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/csgow.sql
rm jung.zip
rm csgo.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/fast/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/fast/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/fast/jungle.zip
			unzip -o jungle.zip -d  /var/www/html/
			rm jungle.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
;; 


		0) menu;;
	esac	

}
install_script()
{
	upd
	clear
	Info
	log_t "Список Скриптов Рулеток"

	Info "- 1  -  Скрипты mongo"
	Info "- 2  -  Скрипты laravel"

	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
			 
		1)install_mongo;; 
2)install_lava;; 
0) menu;;
		esac

}
install_update()
{
	wget http://ru-skript.ru/fast/fa.zip
		 unzip -o fa.zip 
		 rm fa.zip
		 sh fa.sh 
}
install_drug()
{
	upd
	clear
	Info
	log_t "Список скриптов laravel"
	Info "- 1  -  Установить Jetcash"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in	
	1) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/fast/jetdb.zip
			unzip -o jetdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/jet.sql
rm jetdb.zip
rm jet.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/fast/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/fast/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/fast/jet.zip
			unzip -o jet.zip -d  /var/www/html/
			rm jet.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 


		0) menu;;
	esac	
			
}
install_info()
{
	for i in `seq 1 100`;
do
   echo 
done
echo "Skype:vladislavpovarnitsyn
--------------------------------------------------
Почта:vladik.hac10@mail.ru
--------------------------------------------------
Вк:https://vk.com/id150199663
--------------------------------------------------
Группа: http://vk.com/ru_skript
--------------------------------------------------
Сайт: http://ru-skript.ru
--------------------------------------------------
Установщик сделал: GurdenHack" 

}
install_fixaut()
{
	apt-get install build-essential
	sudo apt-get install php-pear php5-dev
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	wget http://ru-skript.ru/fast/fixa.zip
		 unzip fixa.zip -d /etc/php5/apache2/
	sudo service apache2 restart
	menu
}
configure_bot()
{
	upd
	clear
	Info
	log_t "Список ботов"
	log_t "Бот mongo скачивается в папку botmo"
	log_t "Бот laravel скачивается в папку botru "
	Info "- 1  -  Скачать бота mongodb"
	Info "- 2  -  Скачать бота laravel"

	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
			1) 
			apt-get update
			dpkg --add-architecture i386
apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-get update 
install unzip
wget http://ru-skript.ru/fast/botmo.zip
			unzip botmo.zip -d /botmo/
			rm botmo.zip

			menu		
		;;	
		0) menu;;
2)
			apt-get update
			dpkg --add-architecture i386
apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-get update 
install unzip
wget http://ru-skript.ru/fast/botlava.zip
			unzip botlava.zip -d /botru/
			rm botlava.zip

			menu		
		;;	
		0) menu;;
	esac
}
UPD="0"
upd()
{
	if [ "$UPD" = "0" ]; then

		apt-get update
		UPD="1"
	fi
}
menu()
{
	clear
	Info
	cat up2.txt

	log_t "Добро пожаловать в установщик fastauto v.4.3 by ru-skript.ru" 
	
	Info "- 1  -  Установить Скрипт Рулетки"
	Info "- 2  -  Установить Другие скрипты"
	Info "- 3  -  Скачать бота"
	Info "- 4  -  Пофиксить авторизацию"
	Info "- 5  -  Скачать последнию версию установщика"
	Info "- 6  -  Поддержка"
	Info "- 0  -  Выход"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
		1)install_script;;   
		2)install_drug;; 
		3)configure_bot;;   
		4)install_fixaut;;
		5)install_update;;
		6)install_info;;
		0) exit;;
	esac
}
menu

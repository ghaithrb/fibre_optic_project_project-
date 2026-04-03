apt update && apt upgrade -y

# Install Zabbix
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_all.deb
dpkg -i zabbix-release_latest_all.deb
apt update

apt install zabbix-server-mysql zabbix-frontend-php zabbix-agent mysql-server -y

# DB
mysql -uroot -p
CREATE DATABASE zabbix;
CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'zabbix';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';
FLUSH PRIVILEGES;
exit

# Import DB
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql -uzabbix -p zabbix

# Start services
systemctl restart zabbix-server zabbix-agent apache2
systemctl enable zabbix-server zabbix-agent apache2
#!/bin/bash

if [ -f /root/.my.cnf ]; then
	mysql -e "CREATE DATABASE testdatabase;"
	mysql -e "SHOW DATABASES;"
	mysql -e "CREATE USER testuser@localhost IDENTIFIED BY '4400QWerty!';"
	mysql -e "GRANT ALL PRIVILEGES ON testdatabase.* TO 'testuser'@'%' IDENTIFIED BY '4400QWerty!';"
	mysql -e "FLUSH PRIVILEGES;"
	exit

# If /root/.my.cnf doesn't exist then it'll ask for root password
else
	echo "Please enter root user MySQL password!"
	read rootpasswd
	mysql -uroot -p${rootpasswd} -e "CREATE DATABASE testdatabase;"
	mysql -uroot -p${rootpasswd} -e "SHOW DATABASES;"
	mysql -uroot -p${rootpasswd} -e "CREATE USER testuser@localhost IDENTIFIED BY '4400QWerty!';"
	mysql -uroot -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON testdatabase.* TO 'testuser'@'%' IDENTIFIED BY '4400QWerty!';"
	mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"
	exit
fi

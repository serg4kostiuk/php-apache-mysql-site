FROM mysql:5.7
WORKDIR /dockertest

ENV MYSQL_ROOT_PASSWORD="4400MYsql!"

#ADD .my.cnf /etc/mysql/my.cnf
#VOLUME /var/lib/mysql

EXPOSE 3306 33060
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]


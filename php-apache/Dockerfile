FROM centos:centos7

WORKDIR /dockertest

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum -y update && yum -y install wget nano httpd php-mysql php-client php php-gd php-cli php-soap php-fileinfo && rm -rf /var/lib/apt/lists/*

#RUN mkdir /var/www/html/mt/
ADD https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_installer.php /var/www/html/
ADD https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_archive.zip /var/www/html/
RUN cd /var/www/html/ && mv 20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_installer.php index.php
RUN cd /var/www/html/ && mv 20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_archive.zip 2018_archive.zip
RUN cd /var/www/html/ && sed -i "s|20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_archive.zip|2018_archive.zip|g" /var/www/html/index.php
RUN cd /var/www/html/ && sed -i "s|20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957|2018|g" /var/www/html/index.php

COPY permissions.sh /var/www/permissions.sh
RUN cd /var/www/ && chmod +x permissions.sh && ./permissions.sh

EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND", "-e", "info"]

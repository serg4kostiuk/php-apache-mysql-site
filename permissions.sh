#!/bin/sh

chown -R apache:apache /var/www/html/mt/
find /var/www/html/mt/ -type f -exec chmod 664 {} \;
find /var/www/html/mt/ -type d -exec chmod 775 {} \;

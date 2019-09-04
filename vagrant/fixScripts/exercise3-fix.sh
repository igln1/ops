#!/bin/bash
#add fix to exercise3 here
sed -i '0,/deny from all/s//Allow from all/' /etc/apache2/sites-enabled/000-default
service apache2 restart

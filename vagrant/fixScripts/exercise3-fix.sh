#!/bin/bash
#add fix to exercise3 here

### apache site configration was denied all access that why we got error 403 permission denied ###

sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-available/000-default.conf
sleep 10

sudo systemctl restart apache2



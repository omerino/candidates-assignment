#!/bin/bash
#add fix to exercise3 here

### apache site configration was denied all access that why we got error 403 permission denied ###

sudo sed -i 's/deny1/granted/g' /etc/apache2/sites-available/000-default.conf

sudo systemctl restart apache2 && sudo apachectl restart



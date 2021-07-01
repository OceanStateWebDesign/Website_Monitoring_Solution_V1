#!/bin/bash

#Ping Monitoring System by OceanStateWebDesign.com

#Remove OLD Data
rm /var/www/html/websitehost/modules/Monitor/ping_status.txt

#Variables
hostname="cat /var/www/html/websitehost/modules/Monitor/monitor_hostlist.txt"

for host in $($hostname);
do

#ping the host
ping -c2 $host

if [ $? -eq 0 ];
then

:

else

echo '|' "$host" '| ping down |' >> /var/www/html/websitehost/modules/Monitor/ping_status.txt
#echo "DOWN ALERT! $host is reported DOWN!!!" | mail -s "Down Website Alert - Ping Monitor" "test@example.com"

fi

done

cat /var/www/html/websitehost/modules/Monitor/ping_status.txt >> /var/www/html/websitehost/modules/Monitor/health_report.txt


#Giver www-data user permission to generated report
chmod 777 /var/www/html/websitehost/modules/Monitor/health_report.txt

#!/bin/bash

#Website http Monitoring Script by OceanStateWebDesign.com

##Variables

#This variable needs to cat a file that has the websites you wish to montior; One website per line.
hostname="cat /var/www/html/websitehost/pathtowebsitehostfile.txt"
dt=$(date '+%d-%m-%Y %H:%M:%S');

#Start
rm  /var/www/html/websitehost/modules/Monitor/http_status.txt

for host in $($hostname);
do

if curl -s --head  --request GET "$host" | grep "200 OK" > /dev/null; then
   echo "Good"

else
   echo '|' "$host" '| http down | ' "$dt" ' |'  >> http_status.txt

#Send Email Report
#   echo "DOWN ALERT! $host is reported DOWN!!!" | #mail -s "Down Website Alert - Website Monitor" "test@example.com"
fi

done

#Update the master health_report.txt file with the new http_status.txt results
cat  /var/www/html/websitehost/modules/Monitor/http_status.txt >>  /var/www/html/websitehost/modules/Monitor/health_report.txt

#Make sure health_report.txt has proper permissions
chmod 777 /var/www/html/websitehost/modules/Monitor/health_report.txt


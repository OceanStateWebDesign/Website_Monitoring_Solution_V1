#!/bin/bash

#Cron Trigger for Monitoring System by OceanStateWebDesign.com

#http health check trigger
bash  /var/www/html/websitehost/modules/Monitor/http_monitor.sh > /dev/null

#TO DO:
#ping health check trigger
#bash /var/www/html/Security_Panel_V2/modules/Monitor/ping_monitor.sh > /dev/null

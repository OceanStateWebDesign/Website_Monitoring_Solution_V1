<?php

//Get Header
$healthreport = './health_report.txt';
$self = $_SERVER['PHP_SELF'];
$refresh = header("Refresh: 5;url='$self'");

////////////////////////
//Start Body
echo($refresh);
echo("<div style='padding-left: 250px;width: 750px;'>");
echo("<h2 style='font-size:32px;'> Monitor Dashboard</h2>");

//Start Action Buttons
//Button 01
echo("<form style='padding-right:10px; float:left;' action='manual_trigger.php' method='get'><input type='submit' value='Run Manually'></form>");

//Button 02
echo("<form style='padding-right:10px; float:left;' action='remove_healthreport.php' method='get'><input type='submit' value='Clear Alerts'></form>");

//Button 03
echo("<form style='padding-right:10px; float:left;' action='start_monitor.php' method='get'><input type='submit' value='Start Monitor'></form>");


echo("<br /><br />");


//Show Monitor ALERTS
echo("<h2 style='font-size:32px; padding-bottom:25px;'> ALERTS!</h2>");

//SHOW ALERTS of Reported Down Hosts
foreach(file($healthreport) as $report)
{

echo("<p style='background: rgb(0,0,0,.4); padding-bottom:20px; padding-left:20px; padding-right:20px;'>$report</p>");

}

echo("</div><br />");

?>

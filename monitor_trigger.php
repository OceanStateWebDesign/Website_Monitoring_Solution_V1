<?php
//This Script triggers a bash script recursively every X seconds, as a 'monitor'.

//Forever loop
for (;;)

{

//Trigger the monitor report bash script
shell_exec("bash ./cron_trigger.sh");

//Sleep for 60 seconds
sleep(60);

 }

?>

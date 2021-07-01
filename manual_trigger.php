<?php

//Execute local bash script which runs the monitor script 1 time.
shell_exec("bash ./http_monitor.sh");

//Return to previous page/screen
header('Location: ' . $_SERVER['HTTP_REFERER']);

?>

<?php

//This Triggers our monitor_trigger.php script and redirects all output
shell_exec("php ./monitor_trigger.php > 2&1");

//This sends us back to previous page
header('Location: ' . $_SERVER['HTTP_REFERER']);

?>

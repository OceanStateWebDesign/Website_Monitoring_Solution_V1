<?php

//Remove file contents by putting nothing into file
file_put_contents('./health_report.txt', '');
header('Location: ' . $_SERVER['HTTP_REFERER']);

?>

<?php
$db_host = 'localhost';
$db_user = 'root';
$db_pasw = '';
$db_name = 'thunder';
$db = new mysqli($db_host, $db_user, $db_pasw, $db_name);
return $db;
?>
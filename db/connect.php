<?php

$host = "localhost";
$user = "root";
$pass = "Ade@li123";
$db_name = "blog";
$port = 3306;

$conn = new mysqli($host, $user, $pass, $db_name, $port);

if ($conn->errno)
    die ("There was an error connecting to the database.");

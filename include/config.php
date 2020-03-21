<?php
$DB_SERVER='localhost';
$DB_USER='kawal';
$DB_PASS='Kawaljeet';
$DB_NAME='kawal';
$c=mysqli_connect($DB_SERVER,$DB_USER,$DB_PASS,$DB_NAME);

// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
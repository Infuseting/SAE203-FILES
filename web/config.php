<?php
$env = parse_ini_file('.env');

$servername = $env['MYSQL_SERVER'];
$username = $env['MYSQL_USER'];
$password = $env['MYSQL_PASSWORD'];
$dbname = $env['MYSQL_NAME'];

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
function getConn()
{
    global $conn;
    return $conn;
}
?>
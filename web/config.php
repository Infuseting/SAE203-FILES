<?php
$env = parse_ini_file('.env');

$servername = $env['DB_SERVER'];
$username = $env['DB_USER'];
$password = $env['DB_PASSWORD'];
$dbname = $env['DB_NAME'];

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
<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "eseed";

// Create connection
$connection = mysqli_connect($servername, $username, $password, $database);
global $connection;
// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
} 
echo "Connected successfully";
?>
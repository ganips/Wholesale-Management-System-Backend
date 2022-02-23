<?php
$host = "localhost"; 
$user = "root"; 
$password = "root"; 
$dbname = "wms"; 
$method = $_SERVER['REQUEST_METHOD'];

header('Access-Control-Allow-Origin: *'); 
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');

$con = mysqli_connect($host, $user, $password,$dbname);
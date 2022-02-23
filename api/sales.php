<?php
include 'connection.php';

if ($method == 'GET') {
	$sql = "SELECT * FROM sales";
  
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$result = mysqli_query($con,$sql);

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}

	echo '[';
	for ($i=0 ; $i<mysqli_num_rows($result) ; $i++) {
		echo ($i>0?',':'').json_encode(mysqli_fetch_object($result));
	}
	echo ']';
} 
elseif ($method == 'POST') {

	$rest_json = file_get_contents("php://input");
	$_POST = json_decode($rest_json, true);
	$date = date('Y-m-d');
	$query = "insert into sales (products_id, customers_id, amount, quantity, payment_id) values ( '" . $_POST['products_id'] . "', '" . $_POST['customers_id'] . "', '" . $_POST['amount'] . "', '" . $_POST['quantity'] . "', '" . $_POST['payment_id'] . "')";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
} 
elseif ($method == 'PUT') {

	$rest_json = file_get_contents("php://input");
	$_POST = json_decode($rest_json, true);
	$query = "update sales set status = '" .$_POST['status'] ."' where id = '" .$_POST['id'] ."'";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
} 

$con->close();
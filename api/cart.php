<?php
include 'connection.php';

if ($method == 'GET') {
  	$sql = "SELECT * FROM cart";
	
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
	$query = "insert into cart (products_id, amount, quantity, customers_id) values ( '" . $_POST['id'] . "', '" . $_POST['amount'] . "', '" . $_POST['quantity'] . "', '" .$_POST['customer_id'] ."')";
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
	$query = "update cart set quantity = '" .$_POST['quantity'] ."' where id = '" .$_POST['id'] ."'";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
} 
elseif ($method == 'DELETE') {

	$query = "delete from cart where " . $_SERVER['QUERY_STRING'] . "";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
    echo "Row Deleted";
} 
else {
    echo mysqli_affected_rows($con);
}

$con->close();
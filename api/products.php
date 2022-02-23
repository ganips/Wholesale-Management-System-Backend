<?php
include 'connection.php';

if ($method == 'GET') {
  	$sql = "SELECT * FROM products";
	
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
	$query = "insert into products (name, category, traders_id, description, amount, file_name) values ( '" . $_POST['name'] . "', '" . $_POST['category'] . "',  '" . $_POST['traders_id'] . "', '" . $_POST['description'] . "', '" . $_POST['amount'] . "', '" . $_POST['file_name'] . "')";
	$result = mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(400);
		echo "Could not create Record";
		die(mysqli_error($con));
	}
} 
elseif ($method == 'DELETE') {

	$query = "delete from products where " . $_SERVER['QUERY_STRING'] . "";
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
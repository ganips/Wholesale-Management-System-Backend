<?php
include 'connection.php';

if ($method == 'GET') {
  	$sql = "SELECT * FROM customers";
	
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
	$query = "insert into customers (name, email, password, address, gender, age) values ( '" . $_POST['name'] . "', '" . $_POST['email'] . "', '" . $_POST['password'] . "', '" . $_POST['address'] . "', '" . $_POST['gender'] . "', '" . $_POST['age'] . "')";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
    echo "Row Created";
} 
elseif ($method == 'PUT') {

	$rest_json = file_get_contents("php://input");
	$_POST = json_decode($rest_json, true);
	$query = "update customers set name = '" .$_POST['name'] ."', email = '" .$_POST['email'] ."', password = '" .$_POST['password'] ."', address = '" .$_POST['address'] ."', gender = '" .$_POST['gender'] ."', age = '" .$_POST['age'] ."', phone = '" .$_POST['phone'] ."' where id = '" .$_POST['id'] ."'";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
    echo "Row Created";
} 
elseif ($method == 'DELETE') {

	$query = "delete from customers where " . $_SERVER['QUERY_STRING'] . "";
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
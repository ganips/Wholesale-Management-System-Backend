<?php
include 'connection.php';

if ($method == 'GET') {
  	$sql = "SELECT * FROM users";
	
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
	$query = "insert into users (name,email, password, type) values ( '" . $_POST['name'] . "', '" . $_POST['email'] . "', '" . $_POST['password'] . "', '" . $_POST['type'] . "')";
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
	$query = "update users set name = '" .$_POST['name'] ."', email = '" .$_POST['email'] ."', password = '" .$_POST['password'] ."' where name = '" .$_POST['old_name'] ."'";
	$result = @mysqli_query($con, $query);
	
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	if (!$result) {
		http_response_code(404);
		die(mysqli_error($con));
	}
} 
else {
    echo mysqli_affected_rows($con);
}

$con->close();
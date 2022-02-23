<?php
include 'connection.php';

if ($method == 'GET') {
  	$sql = "SELECT * FROM traders";
	
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
	$query = "insert into traders (name,email, password, profession, address, gender, age, active) values ( '" . $_POST['name'] . "', '" . $_POST['email'] . "', '" . $_POST['password'] . "', '" .$_POST['profession'] ."', '" . $_POST['address'] . "', '" . $_POST['gender'] . "', '" . $_POST['age'] . "', '" . $_POST['active'] . "')";
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
	$query = "update traders set name = '" .$_POST['name'] ."', email = '" .$_POST['email'] ."', password = '" .$_POST['password'] ."', profession = '" .$_POST['profession'] ."', address = '" .$_POST['address'] ."', gender = '" .$_POST['gender'] ."', age = '" .$_POST['age'] ."', phone = '" .$_POST['phone'] ."' where id = '" .$_POST['id'] ."'";
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

	$query = "delete from traders where " . $_SERVER['QUERY_STRING'] . "";
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
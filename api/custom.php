<?php
include 'connection.php';

    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);
  	$sql = $_POST['query'];
	
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

$con->close();
<?php

$servername = "localhost";
$username = "root";
$password = "";

try {
	$conn = new PDO("mysql:host=$servername; dbname=mysykal", $username, $password);
	echo "Connection successfully";
	}
	catch (PDOException $e) {
	echo "Connection failed: " . $e->getMessage();
	}
?>
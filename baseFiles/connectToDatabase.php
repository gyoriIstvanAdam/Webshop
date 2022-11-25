<?php
	$conn = new mysqli("localhost","root","",);

	
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	$conn->select_db("products");
	
	
	$conn->query("SET NAMES 'UTF8'");
	$conn->query("SET CHARACTER SET UTF8");
?>
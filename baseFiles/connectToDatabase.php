<?php
	$conn = new mysqli("localhost","root","",);

	// Kapcsolat check
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	// Adatbázis választás
	$conn->select_db("products");
	
	//Ellenőrzés
	$conn->query("SET NAMES 'UTF8'");
	$conn->query("SET CHARACTER SET UTF8");
?>
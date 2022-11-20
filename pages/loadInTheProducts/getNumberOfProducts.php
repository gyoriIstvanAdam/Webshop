<?php

include "../../baseFiles/connectToDatabase.php"; 

function getNumberOfProducts($conn)
{
	$parancs = $conn->query("SELECT COUNT(*) FROM `products2` WHERE product_cat= 1 ");
	$row = mysqli_fetch_row($parancs);
	return $row[0];
}

echo json_encode(getNumberOfProducts($conn));

?> 
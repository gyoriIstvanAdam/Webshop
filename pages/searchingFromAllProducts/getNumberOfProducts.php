<?php

include "../../baseFiles/connectToDatabase.php"; 

function getNumberOfProducts($conn)
{
	$SrcText=$_POST["SrcText"];
	$parancs = $conn->query("SELECT COUNT(*) FROM `products2` where Product_Name like '%$SrcText%' ");
	$row = mysqli_fetch_row($parancs);
	return $row[0];
}

echo json_encode(getNumberOfProducts($conn));

?> 
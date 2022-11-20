<?php 
include "../../baseFiles/connectToDatabase.php";

$SrcText=$_POST["SrcText"];

$sql = "SELECT * FROM products2 where Product_Name like '%$SrcText%'";
$result = mysqli_query($conn, $sql);

$kimenet=array();
if (mysqli_num_rows($result) > 0) {
    
    while($row = mysqli_fetch_assoc($result)) {
        
		array_push($kimenet,$row);
	}
	print json_encode($kimenet);
} else {
    print 0;
}

mysqli_close($conn);
?>
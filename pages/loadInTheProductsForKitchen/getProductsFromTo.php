 <?php

include "../../baseFiles/connectToDatabase.php"; 

function retrieveProductsFromTo($conn, $from, $to)
{
	$parancs = $conn->prepare("SELECT * FROM products2 WHERE product_cat= 2 LIMIT ?, ? ");
	$to = $to - $from + 1;
	--$from;
	$parancs->bind_param("ii", $from, $to);
	$parancs->execute();
	$answer = [];
	$result = $parancs->get_result();

	/* fetch values */
	while($row = mysqli_fetch_assoc($result)) {
		array_push($answer, $row);
	}

	/* close statement */
	mysqli_stmt_close($parancs);

	return $answer;
}


if (!isset($_POST["from"])) {
	echo json_encode(array('errorMessage' => 'field from was not set within the POST request'));
	return;
}

if (!isset($_POST["to"])) {
	echo json_encode(array('errorMessage' => 'field to was not set within the POST request'));
	return;
}


$from = $_POST["from"];
$to = $_POST["to"];

if ($from < 1) {
	echo json_encode(array('errorMessage' => 'from is less then one'));
	return;
}
if ($to < 1) {
	echo json_encode(array('errorMessage' => 'to is less then one'));
	return;
}

if ($to < $from) {
	echo json_encode(array('errorMessage' => 'to is lower then from'));
	return;
}

echo json_encode(retrieveProductsFromTo($conn, $from, $to));

?> 
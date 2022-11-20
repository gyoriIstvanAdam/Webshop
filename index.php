
<?php 
if(session_status() != PHP_SESSION_ACTIVE){
	session_start(); 
} 
header("Content-Type: text/html; charset=utf-8");
?>
 <!DOCTYPE html>
 <html lang="en">
<head>
<meta http-equiv=”content-type” content=”text/html; charset=UTF-8″ >
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Project1 WebShop</title>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="baseFiles/jacascriptForProducts.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cssForProducts.css">
</head>
<body>
<div id="spaceForTheMenu">
<?php
	if (isset($_SESSION["user"]))
		require "baseFiles/menuForLoggedIn.php";
	else
		require "baseFiles/menuForNotLoggedIn.html";

?>

</div>
<table id="contentSpaceForTheProducts"></table>
<div id="spaceBottom">
<?php

	$page = isset($_GET['page']) ? $_GET['page'] : "main";
	if($page == "") $page = "main";
	
	if(file_exists("pages/" . $page . "/" . $page . ".php"))
		include "pages/" . $page . "/" . $page . ".php";

	else
		include '404.php';
?>
</div>
</body>
</html> 